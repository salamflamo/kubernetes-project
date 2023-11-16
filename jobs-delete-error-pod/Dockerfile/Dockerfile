FROM bitnami/kubectl:latest
  # checkov:skip=CKV_DOCKER_2: no need HC since this is onlye kubectl only
  # checkov:skip=CKV_DOCKER_7: regardless for image tag version
  # checkov:skip=CKV_DOCKER_3: regardless for image tag version
  

# RUN ["mkdir","-p","/script"]
WORKDIR /script
COPY  --chmod=777 ./script/* /script/

ENTRYPOINT [ "./script/entrypoint.sh" ]