FROM golang

RUN mkdir /app
ADD . /app
WORKDIR /app

RUN make build

# use your folder route
CMD ./patients-api
EXPOSE 8080