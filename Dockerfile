FROM golang:1.12.0-alpine3.9
RUN mkdir /app
ADD . /app
WORKDIR /app
COPY go.mod ./
#COPY go.sum ./
RUN go mod download
RUN go build -o main .
CMD ["/app/main"]