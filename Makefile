UBUNTU_VERSION := 20.04

build:
	docker build --build-arg UBUNTU_VERSION=$(UBUNTU_VERSION) -t srsran-docker .

buildsrc:
	docker build --build-arg UBUNTU_VERSION=$(UBUNTU_VERSION) --build-arg INSTALL_SCRIPT=install-srsran-from-source.sh -t srsran-docker-src .

run:
	docker run --name srsran --rm -ti --privileged -v $$PWD:/data -v /dev:/dev srsran-docker /bin/bash

runsrc:
	docker run --name srsran --rm -ti --privileged -v $$PWD:/data -v /dev:/dev srsran-docker-src /bin/bash

runanother:
	docker exec -ti srsran /bin/bash
