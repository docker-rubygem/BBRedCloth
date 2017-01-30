FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.8.8

RUN gem install BBRedCloth --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["redcloth"]
CMD ["--help"]
