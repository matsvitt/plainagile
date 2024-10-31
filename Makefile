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
