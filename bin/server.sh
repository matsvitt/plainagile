#!/bin/bash

export site_name="plainagile" && export MSYS_NO_PATHCONV=1
docker run --rm \
  --volume="$PWD:/srv/jekyll" \
  -it jekyll/jekyll \
  sh -c "chown -R jekyll /usr/gem/ && jekyll new $site_name" \
    && cd $site_name
