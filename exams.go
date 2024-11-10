package main

import (
	"encoding/json"
	"fmt"
	"github.com/gin-gonic/gin"
	"gorm.io/gorm"
)

func GetQuestionsByExamID(c *gin.Context) {
	examID := c.Param("exam")
	var questions []Question
	result := db.Where("test_id = ?", examID).Find(&questions)
	if result.Error != nil {
		c.JSON(404, gin.H{"error": "Questions not found"})
		return
	}

	c.JSON(200, questions)
}

func GetAnswersByQuestionID(c *gin.Context) {
	questionID := c.Param("question")
	var answers []Answer
	result := db.Where("question_id = ?", questionID).Find(&answers)
	if result.Error != nil {
		c.JSON(404, gin.H{"error": "Answers not found"})
		return
	}
	c.JSON(200, answers)
}

func GetExamsByInstAndSubject(c *gin.Context) {
	inst := c.Query("institution")
	subject := c.Query("subject")

	var exams []Test
	var result *gorm.DB

	if inst == "" {
		result = db.Where("subject = ? ", subject).Find(&exams)
	}

	if subject == "" {
		result = db.Where("institution = ?", inst).Find(&exams)
	}

	if inst != "" && subject != "" {
		result = db.Where("institution = ? AND subject = ?", inst, subject).Find(&exams)
	}

	if result.Error != nil {
		c.JSON(404, gin.H{"error": "Test not found"})
		return
	}

	c.JSON(200, exams)
}

func GetExplainForAnswer(c *gin.Context) {
	answerID := c.Param("answer")

	var explain Explain
	result := db.Where("answer_id = ?", answerID).First(&explain)

	if result.Row() != nil {
		c.JSON(200, gin.H{"explanation": explain.Content})
		return
	}

	fmt.Printf("Error: %v\n", result.Error)

	var answer Answer
	result = db.Preload("Question").Where("id = ?", answerID).First(&answer)
	if result.Error != nil {
		c.JSON(404, gin.H{"error": "Answer not found"})
		return
	}

	question := answer.Question.Text
	answerText := answer.Text
	isCorrect := answer.Correct

	var prompt string

	prompt = question + "\n"

	promptAsk := "Interpreting the question above, generate an explanation in one paragraph of why the answer below is incorrect.\n"

	if isCorrect {
		promptAsk = "Interpreting the question above, generate an explanation in one paragraph of why the answer below is correct.\n"
	}

	prompt += promptAsk + answerText

	response, err := CallGroqAPI(prompt)
	if err != nil {
		c.JSON(500, gin.H{"error": err.Error()})
		return
	}

	var responseJSON map[string]interface{}

	err = json.Unmarshal([]byte(response), &responseJSON)
	if err != nil {
		c.JSON(500, gin.H{"error": err.Error()})
		return
	}

	explanation := responseJSON["choices"].([]interface{})[0].(map[string]interface{})["message"].(map[string]interface{})["content"]

	explain = Explain{
		AnswerID: answer.ID,
		Content:  explanation.(string),
	}

	db.Create(&explain)

	c.JSON(200, gin.H{"explanation": explanation})
}
