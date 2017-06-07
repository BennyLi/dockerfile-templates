name = my-docker-app
lib = ./dockerfiles

dockerfile: $(lib)/*.m4
						m4 -I $(lib) $(lib)/Dockerfile.m4 > Dockerfile

build: 	dockerfile
				docker build --tag $name .

shell:
				docker run --rm -it $name zsh
