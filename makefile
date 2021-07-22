IMAGE := 754256621582.dkr.ecr.eu-west-2.amazonaws.com/cloud-platform/poornima-dev-ecr
TAG := 1.1

.built-image: Dockerfile Gemfile Gemfile.lock makefile
	docker build -t $(IMAGE) .
	touch .built-image

push: .built-image
	docker tag $(IMAGE) $(IMAGE):$(TAG)
	docker push $(IMAGE):$(TAG)
