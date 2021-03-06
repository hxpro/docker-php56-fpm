FROM centos:7

RUN yum install -y https://rpms.remirepo.net/enterprise/remi-release-7.rpm

RUN yum install -y \
    openssh-clients \
    git \
    zip \
    gettext \
    php74-php-cli \
    php74-php-intl \
    php74-php-json \
    php74-php-gd \
    php74-php-mbstring \
    php74-php-mcrypt \
    php74-php-mysqlnd \
    php74-php-opcache \
    php74-php-pdo \
    php74-php-pear \
    php74-php-pecl-imagick \
    php74-php-pecl-igbinary \
    php74-php-sodium \
    php74-php-pecl-memcached \
    php74-php-pecl-mongodb \
    php74-php-pecl-msgpack \
    php74-php-pecl-mysql \
    php74-php-pecl-zip \
    php74-php-process \
    php74-php-soap \
    php74-php-xml \
    composer \
    && yum clean all

ENV PATH=/opt/remi/php74/root/usr/bin:/opt/remi/php74/root/usr/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/root/bin
ENV LD_LIBRARY_PATH=/opt/remi/php74/root/usr/lib64
ENV MANPATH=/opt/remi/php74/root/usr/share/man:
