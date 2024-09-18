# Base image is in https://registry.hub.docker.com/_/golang/
# Refer to https://blog.golang.org/docker for usage
FROM golang:1.23.1-bookworm
# MAINTAINER Lei Cao lexo.charles@gmail.com

# ENV GOPATH /go
RUN  go mod init beemodule

# Install beego & bee
RUN go get -u github.com/beego/beego/v2
RUN go get -u github.com/beego/bee/v2

WORKDIR /app
COPY . /app

# RUN useradd -ms /bin/bash userbee
# RUN chown userbee: -R /app

ENV GOPATH=/app/bin
ENV PATH=${PATH}:${GOPATH}

# USER userbee

RUN go build -o api .

EXPOSE 8080

# ENTRYPOINT ["/app/entrypoint.sh"]
