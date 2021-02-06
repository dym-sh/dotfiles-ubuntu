#!/bin/bash

# git cleanup

git gc --aggressive
git repack -Ad
git prune
