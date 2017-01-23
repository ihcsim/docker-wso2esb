# docker-wso2esb

Docker image to install and run WSO2 Enterprise Service Bus.

## Tags
* [5.0.0, latest](https://github.com/ihcsim/docker-wso2esb/tree/esb-5.0.0)
* [4.9.0](https://github.com/ihcsim/docker-wso2esb/tree/esb-4.9.0)
* [4.8.1](https://github.com/ihcsim/docker-wso2esb/tree/esb-4.8.1)

## Description
The Dockerfile will:

* Use `wget` to pull the ESB 5.0.0 ZIP from a S3 bucket into the container `/opt` folder.
* Install `zip`.
* Unzip the ESB 5.0.0 ZIP.
* Remove the ESB 5.0.0 ZIP.
* Expose the container port `9443`, `9763`, `8243`, `8280`.
* Set the `wso2server.sh` start-up script as the container start-up entrypoint.

## Usage
To run the WSO2 ESB:
```sh
docker run -d --name esb -p 9443:9443 isim/wso2esb
````
To access web admin console, navigate to `https://localhost:9443` using your web browser.

## License
Refer to the [LICENSE](LICENSE) file. WSO2 license can be found [here](http://wso2.com/licenses).
