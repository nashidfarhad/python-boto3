FROM alpine:latest

VOLUME ["/work"]

WORKDIR /work

RUN apk --no-cache update && \
    apk --no-cache add curl python3 && \
    curl https://bootstrap.pypa.io/get-pip.py | python3 && \
    ln -s /usr/bin/python3 /usr/bin/python && \
    ls -s /usr/bin/pip3 /usr/bin/pip && \
    pip install boto3

# ENTRYPOINT ["python -i"]
