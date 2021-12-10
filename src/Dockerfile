FROM golang AS build-env
ADD .. /go/src/app
WORKDIR /go/src/app
RUN go build -v -o /go/src/app/hello-go

FROM alpine
RUN apk add -U tzdata
RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai  /etc/localtime
COPY --from=build-env /go/src/app/hello-go /usr/local/bin/hello-go
EXPOSE 9090
CMD [ "hello-go" ]