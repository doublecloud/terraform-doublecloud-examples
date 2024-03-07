package main

import (
	"context"
	"crypto/tls"
	"encoding/json"
	"flag"
	"fmt"
	"github.com/segmentio/kafka-go/sasl/scram"
	"time"

	"github.com/segmentio/kafka-go"
)

const (
	batchBytes     = 1024 * 1024
	defaultTimeout = 30 * time.Second
)

var (
	broker   = flag.String("broker", "", "")
	user     = flag.String("user", "default", "")
	password = flag.String("password", "default", "")
	topic    = flag.String("topic", "cdc-data.public.my_little_pony", "")
	groupID  = flag.String("group-id", "cli", "")
)

type Pony struct {
	Description string `json:"description"`
	ID          int    `json:"id"`
	Name        string `json:"name"`
}

type DebeziumMessage struct {
	Payload struct {
		After       *Pony  `json:"after"`
		Before      *Pony  `json:"before"`
		Op          string `json:"op"`
		Transaction any    `json:"transaction"`
		TsMs        int64  `json:"ts_ms"`
	} `json:"payload"`
}

func main() {
	flag.Parse()
	sasl, err := scram.Mechanism(scram.SHA512, *user, *password)
	if err != nil {
		panic(err)
	}

	readerConfig := kafka.ReaderConfig{
		Brokers:  []string{*broker},
		Topic:    *topic,
		MaxBytes: batchBytes,
		Dialer: &kafka.Dialer{
			Timeout:       defaultTimeout,
			DualStack:     true,
			TLS:           new(tls.Config),
			SASLMechanism: sasl,
		},
		GroupID:        *groupID,
		CommitInterval: time.Second,
	}
	if err := readerConfig.Validate(); err != nil {
		panic(err)
	}

	reader := kafka.NewReader(readerConfig)
	for {
		msg, err := reader.ReadMessage(context.Background())
		if err != nil {
			panic(err)
		}
		var dzMsg DebeziumMessage
		if err := json.Unmarshal(msg.Value, &dzMsg); err != nil {
			continue
		}
		switch dzMsg.Payload.Op {
		case "u":
			fmt.Printf("pony changes: now: %s have %s!\n", dzMsg.Payload.After.Name, dzMsg.Payload.After.Description)
		case "c":
			fmt.Printf("new pony, salute to: %s!\n", dzMsg.Payload.After.Name)
		case "d":
			fmt.Printf("SOMEONE deleted our PONY: #%v, press F\n", dzMsg.Payload.Before.ID)
		default:
			fmt.Printf("event: %v", dzMsg.Payload)
		}
	}
}
