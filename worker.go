package main

import (
	"fmt"
	"os"
	"time"
)

func main() {
	hostname, _ := os.Hostname()

	for {
		fmt.Printf("%s: work\n", hostname)
		time.Sleep(1 * time.Second)
	}
}
