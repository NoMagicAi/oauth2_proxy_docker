.PHONY: build clean push
IMG_NAME=europe-west3-docker.pkg.dev/management-nomagic-ai/images/oauth2_proxy
TAG=2018-03-05

build:
	docker build -t $(IMG_NAME):$(TAG) .

clean:
	docker rmi $(IMG_NAME)

push:
	gcloud docker -- push $(IMG_NAME):$(TAG)
