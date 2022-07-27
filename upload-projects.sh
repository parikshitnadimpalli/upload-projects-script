#!/bin/bash

upload() {

	pushd $1
	git init 
	git add .
	git commit -m "initial commit"
	git branch -M main
	gh repo create $(basename $1) --public --source .
	git push -u origin main
	popd

}

export -f upload

find . -mindepth 1 -maxdepth 1 -type d -exec bash -c  'upload "$@"' bash  {} \;
