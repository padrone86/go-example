FROM golang:1.18-alpine AS builder

WORKDIR /app
COPY . .

WORKDIR /app/hello
RUN go build -o /hello

FROM alpine:latest
COPY --from=builder /hello /hello

ENTRYPOINT [ "/hello" ]
