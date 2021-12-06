#!/bin/bash

# *******************************************************************************
# *      Download JD-CLI and set up git                                         *
# *******************************************************************************


mkdir -p lib
mkdir -p src


curl -L -o lib/package.zip https://github.com/intoolswetrust/jd-cli/releases/download/jd-cli-1.2.0/jd-cli-1.2.0-dist.zip
unzip -o lib/package.zip -d lib

cp -r src_default/. src

cd src
git init