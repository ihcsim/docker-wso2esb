### docker-wso2esb

Docker image to install and run WSO2 Enterprise Service Bus. 

### Tags

* [4.9.0, latest](https://github.com/ihcsim/docker-wso2esb/tree/esb-4.9.0)
* [4.8.1](https://github.com/ihcsim/docker-wso2esb/tree/esb-4.8.1)

### Description

The dockerfile will:

* Use `wget` to pull the ESB 4.9.0 ZIP from a S3 bucket into the container `/opt` folder.
* Install `zip`.
* Unzip the ESB 4.9.0 ZIP.
* Remove the ESB 4.9.0 ZIP.
* Expose the container port `9443`, `9763`, `8243`, `8280`.
* Set the `wso2server.sh` start-up script as the container start-up entrypoint.

### Usage
* To pull: `docker pull isim/wso2esb`
* To build: `docker build --rm -t your_image_name github.com/ihcsim/docker-wso2esb`
* To run: `docker run --rm --name your_container_name -p 9443:9443 -p 9763:9763 -p 8243:8243 -p 8280:8280 your_image_name`
* To access web admin console, navigate to `https://localhost:9443`

Follow me on [![alt text][1.1]][1]
[1.1]: http://i.imgur.com/tXSoThF.png (twitter icon with padding)
[1]: http://www.twitter.com/IvanHCSIM
