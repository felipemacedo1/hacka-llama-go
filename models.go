package main

import (
	"gorm.io/gorm"
	"time"
)

type User struct {
	gorm.Model
	ID        int    `gorm:"primaryKey" json:"id"`
	Email     string `gorm:"type:varchar(255)" json:"email"`
	Password  string `gorm:"type:varchar(255)" json:"password"`
	CreatedAt time.Time
	UpdatedAt time.Time
}

type UserAnswer struct {
	gorm.Model
	ID         int `gorm:"primaryKey" json:"id"`
	UserID     int `gorm:"index" json:"user_id"`
	QuestionID int `gorm:"index" json:"question_id"`
	AnswerID   int `gorm:"index" json:"answer_id"`

	Question Question `gorm:"foreignKey:QuestionID"`
	Answer   Answer   `gorm:"foreignKey:AnswerID"`
}

func (UserAnswer) TableName() string {
	return "users_answers"
}

type Test struct {
	gorm.Model
	ID          int       `gorm:"primaryKey" json:"id"`
	Title       string    `gorm:"type:varchar(255)" json:"title"`
	Description string    `gorm:"type:varchar(255)" json:"description"`
	Institution string    `gorm:"type:varchar(255)" json:"institution"`
	Subject     string    `gorm:"type:varchar(255)" json:"subject"`
	Date        time.Time `gorm:"type:datetime" json:"date"`
}

type Question struct {
	gorm.Model
	ID     int    `gorm:"primaryKey" json:"id"`
	TestID int    `gorm:"index" json:"test_id"`
	Text   string `gorm:"type:varchar(255)" json:"text"`

	Test Test `gorm:"foreignKey:TestID"`
}

type ImageQuestion struct {
	gorm.Model
	ID         int `gorm:"primaryKey"`
	QuestionID int `gorm:"index"`

	Question Question `gorm:"foreignKey:QuestionID"`
}

type Answer struct {
	gorm.Model
	ID         int    `gorm:"primaryKey" json:"id"`
	QuestionID int    `gorm:"index" json:"question_id"`
	Correct    bool   `json:"correct" gorm:"default:false"`
	Text       string `gorm:"type:varchar(255)" json:"text"`

	Question Question `gorm:"foreignKey:QuestionID;references:ID" json:"question"`
}

type Class struct {
	gorm.Model
	ID      int `gorm:"primaryKey"`
	UserID  int `gorm:"index"`
	Content bool

	User User `gorm:"foreignKey:UserID"`
}

type ClassQuestion struct {
	gorm.Model
	ID      int `gorm:"primaryKey"`
	ClassID int `gorm:"index"`

	Class Class `gorm:"foreignKey:ClassID"`
}

type ClassAnswer struct {
	gorm.Model
	ID              int `gorm:"primaryKey"`
	ClassQuestionID int `gorm:"index"`
	Correct         bool

	ClassQuestion ClassQuestion `gorm:"foreignKey:ClassQuestionID"`
}

type Explain struct {
	gorm.Model
	ID       int    `gorm:"primaryKey" json:"id"`
	AnswerID int    `gorm:"index" json:"answer_id"`
	Content  string `gorm:"type:varchar(255)" json:"content"`
}
