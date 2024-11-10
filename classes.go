package main

import (
	"encoding/json"
)

func MakeClassForUserByStats(incorrectAnswers map[int]string) interface{} {
	var classes []interface{}
	for _, question := range incorrectAnswers {
		var prompt string
		prompt = "Make a small study class using this question has base for content:\n" + question

		response, err := CallGroqAPI(prompt)
		if err != nil {
			return err
		}

		var responseJSON map[string]interface{}

		err = json.Unmarshal([]byte(response), &responseJSON)
		if err != nil {
			return err
		}

		class := responseJSON["choices"].([]interface{})[0].(map[string]interface{})["message"].(map[string]interface{})["content"]

		classes = append(classes, class)
	}
	return classes
}
