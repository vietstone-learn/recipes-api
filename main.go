package main

import (
	"time"

	"github.com/gin-gonic/gin"
)

func main() {
	router := gin.Default()
	router.Run(":8080")
}

type Recipe struct {
	Name        string    `json:"name"`
	Tags        []string  `json:"tag"`
	Ingredients []string  `json:"ingredients"`
	PublishedAt time.Time `json:"publishedAt"`
}
