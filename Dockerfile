FROM golang:1.22.0

WORKDIR /usr/src/app

COPY . ./

RUN go mod download

RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o /42-docker-final-main

CMD ["/42-docker-final-main"]