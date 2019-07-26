#!/usr/bin/env bash
git pull
git submodule sync
git submodule update --recursive --remote
git add .
git commit -m 'update_all'
git push
