FROM ubuntu:jammy

ENV DEBIAN_FRONTEND noninteractive

RUN apt update && \
    apt install -y openssl nginx php-fpm php-curl php-gd php-mbstring php-zip php-mysql unzip

COPY opencart-files/opencart-4.0.2.3.zip /opt/opencart/
COPY nginx/default /etc/nginx/sites-available/default
COPY post-init.d post-init.d
COPY post-init.sh .

RUN chmod +x post-init.sh

ENTRYPOINT ["./post-init.sh"]