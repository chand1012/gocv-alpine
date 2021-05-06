FROM chand1012/gocv-alpine:4.5.1-buildstage as build-stage

RUN go get -u -d gocv.io/x/gocv
RUN cd /go/pkg/mod/gocv.io/x/gocv@v0.27.0 && go build -o $GOPATH/bin/gocv-version ./cmd/version/main.go

FROM chand1012/gocv-alpine:4.5.1-runtime

COPY --from=build-stage /go/bin/gocv-version /gocv-version
ENTRYPOINT ["/gocv-version"]
