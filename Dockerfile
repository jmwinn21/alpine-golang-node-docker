FROM gliderlabs/alpine:3.3
MAINTAINER Jacob Winn <jmwinn21@gmail.com> (@jacob_winn)
RUN echo 'Welcome to Alpine, all set for Golang and Node!'
RUN apk update && apk add curl git go && mkdir /gopath

RUN apk add nodejs
RUN apk add go

ENV GOROOT /usr/lib/go
ENV GOPATH /gopath
ENV GOBIN /gopath/bin
ENV PATH $PATH:$GOROOT/bin:$GOPATH/bin

RUN go get -u github.com/gobuffalo/buffalo/buffalo
RUN buffalo dev