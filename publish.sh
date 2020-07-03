#!/bin/bash
echo "Update pulic contents"

cd /usr/local/leventseleve

if [ ! -d "www" ]; then
    git clone https://github.com/johngtx/leventseleve.cn ./www
fi

cd www
git pull

hugo --theme=even --baseUrl="http://leventseleve.cn/"