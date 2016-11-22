#!/bin/bash

printf "Cleaning build directory ..."
rm -r build/*
printf "done!\n"

printf "Compiling coffee..."
coffee --output build -c src
printf "done!\n"

printf "Generating HAML..."
haml --trace src/index.haml build/index.html
printf "done!\n"
