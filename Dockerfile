FROM alpine:3.9

ARG CLOUD_SDK_VERSION=263.0.0
ENV CLOUD_SDK_VERSION=$CLOUD_SDK_VERSION

ENV PATH /google-cloud-sdk/bin:$PATH
RUN apk add --update && \
    apk --no-cache add \
        curl \
        python \
        py-crcmod \
        bash \
        libc6-compat \
        openssh-client \
        git \
        gnupg \
        supervisor \
        docker \
    && curl -O https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-sdk-${CLOUD_SDK_VERSION}-linux-x86_64.tar.gz && \
    tar xzf google-cloud-sdk-${CLOUD_SDK_VERSION}-linux-x86_64.tar.gz && \
    rm google-cloud-sdk-${CLOUD_SDK_VERSION}-linux-x86_64.tar.gz && \
    gcloud config set core/disable_usage_reporting true && \
    gcloud config set component_manager/disable_update_check true && \
    gcloud config set metrics/environment github_docker_image && \
    gcloud --version && \
    gcloud --quiet components update kubectl

COPY ./docker/start.sh /start.sh
# COPY ./gitlab-ci.json /.gitlab-ci.json
COPY ./docker/supervisord.conf /etc/supervisor.d/supervisord.ini

CMD /usr/bin/supervisord -n -c /etc/supervisord.conf;