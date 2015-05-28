FROM gardleopard/ubuntu-rvm:latest
MAINTAINER Gard Voigt Rimestad <dockerhub@gurters.com>
RUN mkdir -p /opt/app/
COPY Gemfile /opt/app/
COPY app.rb /opt/app/
COPY run.sh /opt/app/
WORKDIR /opt/app
RUN bash -l -c "bundle install"
EXPOSE 9393
CMD /bin/bash -l -c "/opt/app/run.sh"