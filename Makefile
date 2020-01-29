.PHONY: build clean push
IMG_NAME=eu.gcr.io/kubernetes-nomagic-ai/oauth2_proxy
TAG=2020-01-29-demeter

build:
	docker build -t $(IMG_NAME):$(TAG) .

clean:
	docker rmi $(IMG_NAME)

push:
	gcloud docker -- push $(IMG_NAME):$(TAG)
