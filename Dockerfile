LABEL "com.github.actions.name"="WooCart Deploy"
LABEL "com.github.actions.description"="Deploy changes from your GitHUb repository to your store."
LABEL "com.github.actions.icon"="upload-cloud"
LABEL "com.github.actions.color"="blue"
LABEL "maintainer"="Niteo.co <info@niteo.co>"

FROM alpine:3.11

RUN apk add --no-cache bash curl unzip ca-certificates fuse openssh-client jq \
  && wget -qO- https://rclone.org/install.sh | bash \
  && apk del bash curl unzip

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]