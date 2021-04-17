#!/bin/bash

## reason-ml
# from https://reasonml.github.io/docs/en/installation
gnpm i bs-platform


# use
bsb -init my-new-project -theme basic-reason

cd my-new-project
npm run build
node src/Demo.bs.js


# upd existing
npm i --save-dev bs-platform
