## Building an image from the Dockerfile

Simply run the command `docker build -t [image-name] .` to build an image from the Dockerfile

## Creating and running a container from the image using command line

Running the command

`docker run -d -p [host-port]:5000 --name [container-name] [image-name]`

creates and runs a  container with the name `[container-name]` from the image `[image-name]`. This command binds the `[host-port]`
to the port 5000 of the container, to which the mlflow tracking server listens to.

## Docker-compose

The command `docker-compose up` in the current directory builds the image and a container which is bound to the volume
*mlflow_volume* .

## Configurations in docker compose _.env_ file

The configurations of the _mlflow_ such as its running port or the user of the _postgresql_ are maintained in the _.env_
file. Configure and change the variables in this file rather than changing the _docker_compose.yaml_ file. 

##  Logging the code in python

Remember to set the tracking api in the python code before starting a run:

`mlflow.set_tracking_uri("http://[tracking-server-address]:[tracking-server-port]")`
