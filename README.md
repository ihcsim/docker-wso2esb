docker-wso2esb
===================

Docker image to install and run WSO2 Enterprise Service Bus. It uses the [dockerfile/java](https://index.docker.io/u/dockerfile/java/) as its base image.

If you find this helpful, feel free to endorse me on [coderwall](https://coderwal.com/ivanhcsim). [![endorse](https://api.coderwall.com/ivanhcsim/endorsecount.png)](https://coderwall.com/ivanhcsim)

The dockerfile will:
* Set the `JAVA_HOME` environmental variable.
* Use `wget` to pull the DSS 3.2.0 ZIP from a S3 bucket into the container `/opt` folder.
* Install `zip`.
* Unzip the ESB 4.8.1 ZIP.
* Remove the ESB 4.8.1 ZIP.
* Expose the container port `9443`.
* Set the DSS `wso2server.sh` start-up script as the container start-up command.

### Usage
* To pull: `docker pull isim/docker-wso2dss`
* To build: `docker build --rm -t your_image_name github.com/ihcsim/docker-wso2esb`
* To run: `docker run --rm --name your_container_name -p 9443:9443 your_image_name`
* To access ESB web admin console, navigate to https://localhost:9443

