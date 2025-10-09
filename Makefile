build:
	bundle check || bundle install
	bundle exec jekyll build

clean:
	rm -rf _site
