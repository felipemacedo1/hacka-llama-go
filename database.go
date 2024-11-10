package main

import (
	"gorm.io/driver/mysql"
	"gorm.io/gorm"
	"log"
)

func DbConnect() {
	var err error
	dsn := "user:userpassword@tcp(localhost:3376)/llama?charset=utf8mb4&parseTime=True&loc=Local"
	db, err = gorm.Open(mysql.Open(dsn), &gorm.Config{})
	if err != nil {
		log.Fatalf("failed to connect to the database: %v", err)
	}
}
