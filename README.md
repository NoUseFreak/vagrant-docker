Vagrant docker
==============

This project acts as a template for projects using docker.

It provides a `Vagrantfile` ready to copy to your project.

# Installation

1. Vagrant

Copy the `Vagrantfile` inside the root of your project.

Start the vagrant box.

```bash
$ vagrant up
```

2. Access docker

You have 2 options to access the docker engine.

2.1 Ssh

You can access the docker instance by logging into the vagrant box and running them inside the box.

```bash
$ vagrant ssh
$ docker ps
```

2.1 Docker client

If you want to access the docker without login into the vagrant box you can install the client.

```bash
$ curl -L https://get.docker.com/builds/Darwin/x86_64/docker-latest > /usr/local/bin/docker
$ chmod +x /usr/local/bin/docker
```

Now configure your client to connect to the vagrant box.

```bash
$ export DOCKER_HOST="33.33.33.30:2375"
$ docker ps
```

3. Docker compose

The box comes with `docker-compose` installed. You can install it locally to simplify the workflow.

```bash
$ curl -L https://github.com/docker/compose/releases/download/1.2.0/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose
$ chmod +x /usr/local/bin/docker-compose
```

# Try

```bash
$ docker-compose up -d
```

You can open http://33.33.33.30/ and see that it works.
