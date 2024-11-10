package main

import (
	"github.com/gin-gonic/gin"
	"gorm.io/gorm"
	"net/http"
)

var db *gorm.DB

func main() {
	DbConnect()

	r := gin.Default()
	r.POST("/users", CreateUser)
	r.POST("/login", Login)
	r.GET("/me", VerifyToken)
	r.GET("/exams", GetExamsByInstAndSubject)
	r.GET("/exams/:exam/questions", GetQuestionsByExamID)
	r.GET("/questions/:question/answers", GetAnswersByQuestionID)
	r.GET("/answers/:answer/explain", GetExplainForAnswer)
	r.GET("/users/:id/stats", GetUserStats)
	http.ListenAndServe(":8099", r)
}
