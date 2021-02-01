IMAGE= pi_ub16
ROOT_DIR=$(PWD)
NAME=ldw_pipeline

build:
	docker build -t $(IMAGE) --rm $(PWD)

run:
	docker run \
	    --volume $(ROOT_DIR)/:/root/ \
	    --volume /usr/local/arrival-dev/downloads:/usr/local/arrival-dev/downloads \
	    -v /tmp/.X11-unix:/tmp/.X11-unix \
		--rm -it --gpus all -e DISPLAY $(IMAGE) bash


