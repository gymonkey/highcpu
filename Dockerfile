FROM public.ecr.aws/docker/library/alpine:3.20.0
RUN apk add wget && wget "https://github.com/vikyd/go-cpu-load/releases/download/0.0.1/go-cpu-load-linux-amd64" && chmod 777 go-cpu-load-linux-amd64
CMD ["./go-cpu-load-linux-amd64", "-c", "1", "-p", "20"]
