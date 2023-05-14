FROM --platform=$BUILDPLATFORM alpine:3.12.0 AS builder
RUN apk add --no-cache hugo
WORKDIR /hugo

COPY . .
RUN hugo

FROM --platform=$TARGETPLATFORM nginx:1.18.0
LABEL org.opencontainers.image.source="https://github.com/windsource/techblog"

COPY --from=builder /hugo/public/ /usr/share/nginx/html
