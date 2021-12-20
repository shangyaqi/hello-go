FROM 172.30.10.185:15000/common/golang:1.16.7 AS build-env
ADD . /go/src/app
WORKDIR /go/src/app
RUN go build 
FROM 172.30.10.185:15000/common/golang:1.16.7
COPY --from=build-env /go/src/app/hello-go /usr/local/bin/hello-go
EXPOSE 9090
CMD [ "hello-go" ]
