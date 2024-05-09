FROM ubuntu:latest

ENV TZ=Asia/Kathmandu \
    DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        tzdata \
        build-essential \
        python3 \
        python-dev-is-python3 \
        python3-dev \
        python3-tk \
        libjpeg-dev && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /hstego

COPY hstego hstego

RUN chmod +x hstego

ENTRYPOINT [ "/hstego/hstego" ]
