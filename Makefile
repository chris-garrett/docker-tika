
IMAGE_VERSION=1.17
IMAGE_NAME=chrisgarrett/tika
RUN_ARGS=--rm -it -p 9998:9998 ${IMAGE_NAME}:${IMAGE_VERSION}

all: build

prep:
	VERSION=${IMAGE_VERSION} envsubst '$${VERSION}' < ./templates/Dockerfile.template > Dockerfile
	VERSION=${IMAGE_VERSION} envsubst '$${VERSION}' < ./templates/README.md.template > README.md

build: prep
	docker build --rm=true -t ${IMAGE_NAME}:${IMAGE_VERSION} .

run:
	docker run --rm -it ${RUN_ARGS}

bash:
	docker run ${RUN_ARGS} bash
