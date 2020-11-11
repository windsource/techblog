---
title: "Small and secure web server base image"
date: 2020-11-11
draft: false
---

For a lot applications serving static content is required as for this blog. It is based on [Hugo](https://gohugo.io/) which creates static HTML content. So a small and secure web server is required to serve the content. Small to reduce the footprint such that a lot of instances can run on parallel on single Kubernetes node. Secure to allow a non-root user running the container to support also OpenShift.

The candidates:

* [Apache](https://httpd.apache.org/)
* [Nginx](https://www.nginx.com/)
* [Caddy](https://caddyserver.com/)

## Size

Server | Image               | Size    | Memory
-------| ------------------- | ------- | -------
Nginx  | nginx:1.19.3-alpine | 21.8 MB | 9.0 MB
Apache | httpd:2.4.46-alpine | 55.5 MB | 6.2 MB
Caddy  | caddy:2.1.1-alpine  | 43 MB   | 10.9 MB

The image size was retrieved by using `docker image ls`.
So Nginx seems to have the smallest image size but Apache the lowest memory usage (at least for low loads).

## Security

All 3 images run as root or other priviledged user and serve on port 80. So none of the three images will run out of the box with OpenShift.

At least for nginx there is an alternative image [nginxinc/nginx-unprivileged](https://hub.docker.com/r/nginxinc/nginx-unprivileged) that listens on port 8080 and supports arbitrary users. I have tested that successfully with OpenShift 4.4.
