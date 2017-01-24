# docker-wso2esb

[ ![Codeship Status for ihcsim/docker-wso2esb](https://app.codeship.com/projects/c5242a80-c358-0134-3327-2621c39d51df/status?branch=master)](https://app.codeship.com/projects/197572) [![](https://images.microbadger.com/badges/version/isim/wso2esb:5.0.0.svg)](https://microbadger.com/images/isim/wso2esb:5.0.0 "Get your own version badge on microbadger.com") [![](https://images.microbadger.com/badges/commit/isim/wso2esb:5.0.0.svg)](https://microbadger.com/images/isim/wso2esb:5.0.0 "Get your own commit badge on microbadger.com") [![](https://images.microbadger.com/badges/image/isim/wso2esb:5.0.0.svg)](https://microbadger.com/images/isim/wso2esb:5.0.0 "Get your own image badge on microbadger.com")

Docker image to install and run WSO2 Enterprise Service Bus.

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
