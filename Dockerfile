FROM golang:1.22.3-alpine

RUN apk add --no-cache git bash bash-completion curl
RUN go install github.com/go-task/task/v3/cmd/task@latest

WORKDIR /tasks

COPY tasks/ ./tasks/
COPY Taskfile.yml .

# ENTRYPOINT ["/bin/sh", "-c", "task"]
