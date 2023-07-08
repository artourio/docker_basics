FROM golang:1.20.5

WORKDIR /usr/src/app

COPY ./golang/go.mod ./golang/go.sum ./
RUN go mod download && go mod verify

COPY ./golang/main.go .
RUN go build -v -o /usr/local/bin/app ./main.go

CMD ["app"]
