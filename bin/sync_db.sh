#!/bin/sh

mkdir -p data/$1
boardlib database $1 data/$1/db.sqlite
boardlib images $1 data/$1/db.sqlite data/$1/images