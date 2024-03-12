FROM golang:1.21 as builder
WORKDIR /app
COPY . .
RUN CGO_ENABLED=0 GOOS=linux GO_ARCH=amd64 go build -o loadtester

FROM alpine:latest
RUN apk --no-cache add ca-certificates
COPY --from=builder /app/loadtester .
ENTRYPOINT ["./loadtester"]