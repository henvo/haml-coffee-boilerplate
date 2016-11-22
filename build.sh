#!/bin/bash

if [ -d ./build ]; then
  printf "Cleaning build directory ..."
  rm -r build/*
  printf "done!\n"
else
  printf "Creating build directory..."
  mkdir ./build
  printf "done!\n"
fi

printf "Compiling coffee..."
coffee -c --output build src
printf "done!\n"

printf "Compiling sass..."
mkdir build/stylesheets
sass --trace src/stylesheets/base.sass build/stylesheets/base.css
printf "done!\n"

printf "Generating HAML..."
haml --trace src/index.haml build/index.html
printf "done!\n"
