IMAGE := jekyll-build

all: build

build:
	@docker build -t $(IMAGE) .
	@id=$$(docker create $(IMAGE)); \
	docker cp $$id:/site/_site ./_site; \
	docker rm $$id

dev:
	@JEKYLL_ENV=development bundle exec jekyll serve --livereload

clean:
	@rm -rf _site

.PHONY: all build dev clean

