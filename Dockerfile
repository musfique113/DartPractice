FROM dart:stable AS build
COPY . /apptest
WORKDIR /apptest
CMD dart test.dart