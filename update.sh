#!/bin/bash

# Clone and copy
git clone https://github.com/bioconda/bioconda-recipes
cp -r bioconda-recipes/scripts scripts
cp bioconda-recipes/config.yml config.yml
cp bioconda-recipes/bootstrap.py bootstrap.py
cp bioconda-recipes/build-fail-blacklist build-fail-blacklist
rm -rf bioconda-recipes

git add scripts/ config.yml bootstrap.py build-fail-blacklist
git commit -m "Update script: I have updated this repo $(date)"
git push
