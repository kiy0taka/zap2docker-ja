FROM owasp/zap2docker-stable

USER root
RUN apt-get update && apt-get install -y language-pack-ja-base \
    language-pack-ja \
    ibus-mozc \
    man \
    manpages-ja \
    && update-locale LANG=ja_JP.UTF-8 LANGUAGE=ja_JP:ja
RUN apt-get install -y fonts-ipafont
ENV LANG=ja_JP.UTF-8
ENV LC_ALL=ja_JP.UTF-8
ENV LC_CTYPE=ja_JP.UTF-8
RUN sed -ie 's/Xmx128M/Xmx1024M/' zap-webswing.sh

USER zap