#!/bin/bash

# run container
docker run -it --rm --name datack \
	-p 8888:8888 \
	-v $(pwd $1):/project:rw \
	datack

