FROM debian:wheezy

RUN apt-get update && apt-get install -y \
		openscad \
	--no-install-recommends && rm -rf /var/lib/apt/lists/*
