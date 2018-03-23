FROM alpine:3.7
RUN apk add --update build-base \
  libffi-dev git zlib-dev libxml2-dev \
  libxslt-dev tzdata yaml-dev \
  bash linux-headers xz libc-dev glib-dev libressl procps libressl-dev ruby
RUN git clone https://github.com/postmodern/ruby-install.git
RUN ruby-install/bin/ruby-install --install-dir /var/task/ruby ruby 2.4.3 -- ac_cv_func_isnan=yes ac_cv_func_isinf=yes
RUN echo 'gem: --no-document' >> ~/.gemrc && cp ~/.gemrc /etc/gemrc && chmod uog+r /etc/gemrc
ENV PATH $PATH:/var/task/ruby/bin

