.PHONY: posts update

default: run

run:
	bundle exec jekyll serve --livereload


docker.build:
	docker build -t jekyllx .

build:
	bundle exec jekyll build


docker:
	docker run -p 4000:4000 jekyllx

dockerpull:
	docker pull jekyll/jekyll

small:
	git add -A .
	git commit -m "updaed"
	git push origin main

posts:
	python3  bin/obsconvert.py /Users/matthiasvitt/Library/CloudStorage/OneDrive-Personal/obsidian/freelancing/Artikel/Englisch _posts


update:
	git add -A .
	git commit -m "Updated content"
	git push origin main

#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
