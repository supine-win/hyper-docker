# supine/hyperf:8.0
#
# @link     https://www.hyperf.io
# @document https://hyperf.wiki
# @contact  group@hyperf.io
# @license  https://github.com/supine-win/hyperf-docker/blob/master/LICENSE

ARG ALPINE_VERSION

FROM alpine:$ALPINE_VERSION

LABEL maintainer="Hyperf Developers <group@hyperf.io>" version="1.0" license="MIT"

ARG ALPINE_VERSION

# trust this project public key to trust the packages.
ADD https://alpine-apk-repository.knowyourself.cc/php-alpine.rsa.pub /etc/apk/keys/php-alpine.rsa.pub

##
# ---------- building ----------
##
RUN set -ex \
    # change apk source repo
    && echo "https://alpine-apk-repository.knowyourself.cc/v$ALPINE_VERSION/php-8.0" >> /etc/apk/repositories \
    && echo "@php https://alpine-apk-repository.knowyourself.cc/v$ALPINE_VERSION/php-8.0" >> /etc/apk/repositories \
    && apk update \
    && apk add --no-cache \
    # Install base packages ('ca-certificates' will install 'nghttp2-libs')
    ca-certificates \
    curl \
    wget \
    tar \
    xz \
    libressl \
    tzdata \
    pcre \
    php8 \
    php8-bcmath \
    php8-curl \
    php8-ctype \
    php8-dom \
    php8-gd \
    php8-iconv \
    php8-mbstring \
    php8-mysqlnd \
    php8-openssl \
    php8-pdo \
    php8-pdo_mysql \
    php8-pdo_sqlite \
    php8-phar \
    php8-posix \
    php8-redis \
    php8-sockets \
    php8-sodium \
    php8-sysvshm \
    php8-sysvmsg \
    php8-sysvsem \
    php8-zip \
    php8-zlib \
    php8-xml \
    php8-xmlreader \
    php8-pcntl \
    php8-opcache \
    && ln -sf /usr/bin/php8 /usr/bin/php \
    && apk del --purge *-dev \
    && rm -rf /var/cache/apk/* /tmp/* /usr/share/man /usr/share/php8 \
    && php -v \
    && php -m \
    && echo -e "\033[42;37m Build Completed :).\033[0m\n"
