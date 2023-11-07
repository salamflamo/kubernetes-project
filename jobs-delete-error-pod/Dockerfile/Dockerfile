FROM bitnami/kubectl:latest

RUN ["mkdir","-p","/script"]
WORKDIR /script
COPY  --chmod=777 ./script/* /script/

ENTRYPOINT [ "/bin/sh","-c","while true; do echo live; sleep 10;done" ]