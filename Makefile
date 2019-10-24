.PHONY: build clean push
IMG_NAME=eu.gcr.io/kubernetes-nomagic-ai/oauth2_proxy
TAG=athena-2019-10-24

build:
	docker build -t $(IMG_NAME):$(TAG) .

clean:
	docker rmi $(IMG_NAME)

push:
	gcloud docker -- push $(IMG_NAME):$(TAG)
