version=latest
SERVICE_NAME=spark-connet-golang-service
IMAGE_NAME=fabiocaffarello/$(SERVICE_NAME):$(version)

tidy:
	go mod tidy

image: tidy
	docker build -t $(IMAGE_NAME) .

# health-chmod:
# 	chmod +x ./.docker/spark-health-check.sh

# run: health-chmod image
run: image
	docker-compose up -d