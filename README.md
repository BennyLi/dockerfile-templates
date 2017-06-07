# Dockerfile Templates - WTF?

The main feature I'm missing in Dockerfiles are mixins. I love to reuse code and Dockerfiles just don't allow this. And it doesn't seem to be included in the new future (see [this issue / proposal](moby/moby/issues/735)).

This repo aims to be a workaround with some simple basic tools that should be available on all UNIX plattforms. It utilizes [GNU make](https://www.gnu.org/software/make/) and the [GNU m4 macro processor](https://www.gnu.org/software/m4/m4.html) to generate a Dockerfile from various templates. This repo includes an increasing number of templates that can be used out of the box. And you are very welcome to **contribute**!

## How to use the templates

To build your own Dockerfile from the templates fork this repo and create a branch for your project. Then open [dockerfiles/Dockerfile.m4](dockerfiles/Dockerfile.m4) and include the templates from [dockerfiles/includes/](dockerfiles/includes/) you need. If you miss something add your own template and think about a [pull request](https://github.com/BennyLi/dockerfile-templates/pull/new/master) to this repo. When you are done run
```
make
```
in root directory to generate the Dockerfile. From now on you could use the normal docker commands with your Dockerfile... or you can utilize make again to simplify the process.

### Build the Docker image with make

In the default [makefile](makefile) a build step is integrated. Open the [makefile](makefile) and change the name variable to specify the name of your project. This will be the name of your Docker container. Now you can just run
```
make build
```
to generate the Docker image with your given name and some sensible defaults.

### Start the Docker container and attach to the shell

After you have build the Docker image it's time to start the fresh container. Again for this task a make step is included. You can just run
```
make shell
```
to start the container and attach to the shell. Pretty easy, hm?

## Extend the setup

You can use this setup to bring up software you like. Included in this repo are file to use the hosts X session to run GUI apps inside of docker. Or you can run a server and use it. All you have to do is extend the [makefile](makefile) to start to container or do other awesome stuff. If you are not familiar with make you can use any other tool or the Docker command line tools to do the job. Checkout the [makefile](makefile) to see how the Dockerfile is build.

# Thanks

For this repo I was mainly inspired by [bobbyno/dockerfile-include-spike](https://github.com/bobbyno/dockerfile-include-spike/).
