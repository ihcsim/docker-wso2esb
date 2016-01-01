#
# WSO2 ESB 4.8.1
#
FROM isim/oraclejava:1.7.0_80
MAINTAINER Ivan Sim, ihcsim@gmail.com

ENV VERSION=4.9.0

# copy zip from local folder to container
RUN wget -P /opt https://s3-us-west-2.amazonaws.com/wso2-stratos/wso2esb-$VERSION.zip && \
    apt-get update && \
    apt-get install -y zip && \
    apt-get clean && \
    unzip /opt/wso2esb-$VERSION.zip -d /opt && \
    rm /opt/wso2esb-$VERSION.zip

EXPOSE 9443 9763 8243 8280
WORKDIR /opt/wso2esb-$VERSION
ENTRYPOINT ["bin/wso2server.sh"]
