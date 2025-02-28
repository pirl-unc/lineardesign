# Use Ubuntu 20.04 (Focal) for glibc 2.29
FROM ubuntu:20.04

# Install dependencies
RUN apt update && \
    DEBIAN_FRONTEND=noninteractive apt install -y \
    build-essential git python2 python-is-python2 && \
    apt clean

# Set working directory
WORKDIR /app

# Clone the repository and build
RUN git clone https://github.com/LinearDesignSoftware/LinearDesign.git && \
    cd LinearDesign && \
    make > build.log 2>&1 || cat build.log

# Install coreutils and other utilities
RUN apt install -y coreutils strace && \
    apt clean

# Set the default command to an interactive shell
CMD ["/bin/bash"]

