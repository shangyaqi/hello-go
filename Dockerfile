FROM golang AS build-env
ADD . /go/src/app

CMD [ "ls" ]
