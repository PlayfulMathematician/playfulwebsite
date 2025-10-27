BUNDLE_PATH = vendor/bundle
all: build
bundle:
	@BUNDLE_PATH=$(BUNDLE_PATH) bundle config set --local path '$(BUNDLE_PATH)'
	@BUNDLE_PATH=$(BUNDLE_PATH) bundle install --path $(BUNDLE_PATH)
build: bundle
	@JEKYLL_ENV=production BUNDLE_PATH=$(BUNDLE_PATH) bundle exec jekyll build
dev: bundle
	@JEKYLL_ENV=development BUNDLE_PATH=$(BUNDLE_PATH) bundle exec jekyll serve --livereload
clean:
	@rm -rf _site .jekyll-cache .jekyll-metadata
.PHONY: all bundle build dev clean

