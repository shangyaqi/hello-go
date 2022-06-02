FROM golang:1.16.7 AS build-env
ADD . /go/src/app
WORKDIR /go/src/app
RUN go build 
FROM golang:1.16.7
COPY --from=build-env /go/src/app/hello-go /usr/local/bin/hello-go
EXPOSE 9090
CMD [ "hello-go" ]
