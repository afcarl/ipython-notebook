Dockerized Notebook
===================

Docker container for the IPython notebook (single user).

## Quickstart

Assuming you have docker installed, run this `PASSWORD=mypassword ./quickstart.sh` 


## Hacking on the Dockerfile

Clone this repository, make changes then build the container:

```
docker build -t notebook .
docker run -d -p 8888:8888 -e "PASSWORD=MakeAPassword" notebook
```
