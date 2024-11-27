FROM alpine:latest

ARG BUILD_ARTIFACT_PATH=output/hello
COPY $BUILD_ARTIFACT_PATH /hello

CMD ["/hello"]
