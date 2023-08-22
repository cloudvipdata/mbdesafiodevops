FROM golang

RUN apt install vim git

COPY . /app

RUN cd /app/src
RUN go get -v -d ./...
RUN go build main.go

CMD /app/src/main
