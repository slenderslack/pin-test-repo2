FROM ubuntu@sha256:2fc51f401cb873bfec33022d065efacbaf868b2e23f4dd76d7230d129258e255
ARG REVISION
ARG SOURCE
LABEL org.opencontainers.image.revision=$REVISION
LABEL org.opencontainers.image.source=$SOURCE
RUN echo '{"repo": "pin-test-repo2","base": "base2", "version": 1}' > dog.json
CMD ["cat", "dog.json"]
