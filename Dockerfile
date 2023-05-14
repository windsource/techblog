FROM --platform=$BUILDPLATFORM alpine:3.12.0
RUN apk add --no-cache hugo
WORKDIR /hugo

COPY . .
RUN hugo

FROM --platform=$TARGETPLATFORM nginx:1.18.0

COPY --from=0 /hugo/public/ /usr/share/nginx/html
