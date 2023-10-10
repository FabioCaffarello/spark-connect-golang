FROM golang:latest as builder

WORKDIR /app
COPY . .
RUN GOOS=linux CGO_ENABLED=0 GOARCH=amd64 go build -ldflags="-s -w" -o dist/server ./cmd/main.go


FROM scratch
COPY --from=builder /app/dist/server .
CMD ["./server"]
