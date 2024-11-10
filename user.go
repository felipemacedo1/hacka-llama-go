package main

import (
	"fmt"
	"github.com/gin-gonic/gin"
	"net/http"
)

func CreateUser(c *gin.Context) {
	var userData User

	if err := c.ShouldBindJSON(&userData); err != nil {
		c.JSON(http.StatusBadRequest, gin.H{"error": err.Error()})
		return
	}

	var user User
	result := db.Where("email = ?", userData.Email).First(&user)
	if result.Row() != nil {
		c.JSON(http.StatusInternalServerError, gin.H{"error": "User already exists"})
		return
	}

	result = db.Create(&userData)
	if result.Error != nil {
		c.JSON(http.StatusInternalServerError, gin.H{"error": result.Error.Error()})
		return
	}

	c.JSON(http.StatusCreated, userData)
}

func GetUserById(id int) (*User, error) {
	var user User
	result := db.First(&user, id)
	if result.Error != nil {
		return nil, result.Error
	}

	return &user, nil
}

func GetUserStats(c *gin.Context) {
	userID := c.Param("id")

	var userAnswers []UserAnswer
	result := db.
		Preload("Question").
		Preload("Answer").
		Where("user_id = ?", userID).Find(&userAnswers)

	if result.Error != nil {
		c.JSON(http.StatusInternalServerError, gin.H{"error": result.Error.Error()})
		return
	}

	var correctAnswers []UserAnswer
	var incorrectAnswers []UserAnswer

	for _, userAnswer := range userAnswers {
		if userAnswer.Answer.Correct == true {
			correctAnswers = append(correctAnswers, userAnswer)
			continue
		}

		incorrectAnswers = append(incorrectAnswers, userAnswer)
	}

	userIncorrectQuestions := make(map[int]string)
	for _, incorrectAnswer := range incorrectAnswers {
		fmt.Printf("Incorrect answer: %v\n", incorrectAnswer)
		userIncorrectQuestions[incorrectAnswer.Question.ID] = incorrectAnswer.Question.Text
	}

	c.JSON(http.StatusOK, MakeClassForUserByStats(userIncorrectQuestions))
}
