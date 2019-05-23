FROM ubuntu:latest

USER root

# LIBPOSTAL
# Install Libpostal dependencies
RUN apt-get update && \
	apt-get install -y \
		make \
		curl \
		autoconf \
		automake \
		libtool \
		pkg-config \
		python3-pip

# Download libpostal source to /usr/local/libpostal-1.1-alpha
RUN cd /usr/local && curl -sL https://github.com/openvenues/libpostal/archive/v1.1-alpha.tar.gz | tar -xz


# Create Libpostal data directory at /var/libpostal/data
RUN cd /var && \
	mkdir libpostal && \
	cd libpostal && \
	mkdir data

# Install Libpostal from source
RUN cd /usr/local/libpostal-1.1-alpha && \
	./bootstrap.sh && \
	./configure --datadir=/var/libpostal/data && \
	make -j4 && \
	make install && \
	ldconfig


# Install Libpostal python Bindings
RUN pip3 install postal
