Run from docker image
=================
## What is it?
This project consists of a Docker image containing a Robot Framework installation.

This installation also contains Firefox and the Selenium library for Robot Framework. The test cases and reports should be mounted as volumes.


## Pull Repository

Directly pull from Docker respository 
```
docker pull srt2011/docker-robot-framework
```
Or
 
## Clone this repository
```
git clone https://github.com/srthorat/docker-robot-framework.git
```

## Build from source

```
docker build -t=srt2011/docker-robot-framework .
```

## Run docker

```
docker run -v $(pwd)/tests:/robots -v ${pwd}/output:/output -e ROBOT_TESTS=/robots/ -e BROWSER=firefox srt2011/docker-robot-framework
```

Define test case directory in param -v and change path from $(pwd)/tests to your defined path in your local computer.

