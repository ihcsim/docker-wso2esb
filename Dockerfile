#
# WSO2 ESB 4.8.1
#
FROM dockerfile/java
MAINTAINER isim, ihcsim@gmail.com

# copy zip from local folder to container
RUN wget -P /opt https://s3-us-west-2.amazonaws.com/wso2-stratos/wso2esb-4.8.1.zip

# install zip
RUN \
  apt-get update && \
  apt-get install -y zip && \
  apt-get clean && \
  unzip /opt/wso2esb-4.8.1.zip -d /opt && \
  rm /opt/wso2esb-4.8.1.zip

EXPOSE 9443
CMD ["/opt/wso2esb-4.8.1/bin/wso2server.sh"]

