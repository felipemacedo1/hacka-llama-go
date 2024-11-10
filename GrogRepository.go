package main

import (
	"bytes"
	"encoding/json"
	"fmt"
	"io"
	"net/http"
)

type Message struct {
	Role    string `json:"role"`
	Content string `json:"content"`
}

type RequestBody struct {
	Messages    []Message   `json:"messages"`
	Model       string      `json:"model"`
	Temperature float64     `json:"temperature"`
	MaxTokens   int         `json:"max_tokens"`
	TopP        float64     `json:"top_p"`
	Stream      bool        `json:"stream"`
	Stop        interface{} `json:"stop"`
}

func CallGroqAPI(prompt string) (string, error) {
	apiURL := "https://api.groq.com/openai/v1/chat/completions"
	apiKey := "YOUR_API_KEY"

	messages := []Message{
		{
			Role:    "user",
			Content: prompt,
		},
	}

	reqBody := RequestBody{
		Messages:    messages,
		Model:       "llama3-8b-8192",
		Temperature: 1,
		MaxTokens:   1024,
		TopP:        1,
		Stream:      false,
		Stop:        nil,
	}

	jsonData, err := json.Marshal(reqBody)
	if err != nil {
		return "", fmt.Errorf("failed to marshal request body: %v", err)
	}

	req, err := http.NewRequest("POST", apiURL, bytes.NewBuffer(jsonData))
	if err != nil {
		return "", fmt.Errorf("failed to create request: %v", err)
	}

	req.Header.Set("Content-Type", "application/json")
	req.Header.Set("Authorization", "Bearer "+apiKey)

	client := &http.Client{}
	resp, err := client.Do(req)
	if err != nil {
		return "", fmt.Errorf("failed to make API request: %v", err)
	}
	defer resp.Body.Close()

	if resp.StatusCode != http.StatusOK {
		body, _ := io.ReadAll(resp.Body)
		return "", fmt.Errorf("API request failed with status %d: %s", resp.StatusCode, body)
	}

	responseData, err := io.ReadAll(resp.Body)
	if err != nil {
		return "", fmt.Errorf("failed to read response body: %v", err)
	}

	return string(responseData), nil
}
