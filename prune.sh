#!/bin/bash

json=`./.bin/yq r target.yml -j`

for var in `echo ${json} | ./.bin/jq -r '.directories[]'`
do
  echo "a${var}"
done