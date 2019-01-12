FROM quay.io/aptible/nodejs:v8.2.x

RUN wget http://ftp.ruby-lang.org/pub/ruby/2.4/ruby-2.4.0.tar.gz \
  && tar -xzvf ruby-2.4.0.tar.gz \
  && cd ruby-2.4.0/ \
  && ./configure \
  && make \
  && make install \
  && cd / \
  && rm -rf ruby-2.4.0*

RUN gem install aptible-cli -v 0.15.2
