FROM fedora:26
LABEL maintainer="zuiurs"

RUN dnf install -y go git 
RUN mkdir /go

ENV GOPATH /go
ENV PATH $PATH:$GOPATH/bin

RUN go get github.com/zuiurs/cloudbuild-test-app

EXPOSE 8080

CMD ["cloudbuild-test-app"]
