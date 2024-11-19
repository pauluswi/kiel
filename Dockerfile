# Use an official Golang runtime as a parent image
FROM golang:1.21 AS builder
WORKDIR /app

# Copy the Go modules files
COPY go.mod go.sum ./
RUN go mod download

# Copy the source code and build
COPY . .
RUN go build -o main .

# Use a minimal image for the final build
FROM alpine:latest
WORKDIR /root/
COPY --from=builder /app/main .

# Run the Go application
CMD ["./main"]
