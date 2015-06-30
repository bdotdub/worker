FROM convox/alpine:3.1

RUN apk-install git go

ENV GOPATH /go
ENV PATH $PATH:/go/bin

COPY . /go/src/github.com/convox-examples/worker
WORKDIR /go/src/github.com/convox-examples/worker
RUN go get .

CMD ["worker"]
