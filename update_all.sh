#!/usr/bin/env bash
git pull
git submodule sync
git submodule update --recursive --init
git submodule update --recursive --remote
