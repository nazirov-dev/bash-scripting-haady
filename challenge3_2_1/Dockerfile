FROM ubuntu:20.04

# Set non-interactive mode for apt-get
ENV DEBIAN_FRONTEND=noninteractive

# Install necessary packages
RUN apt-get update && apt-get install -y \
    rsync \
    curl \
    vim \
    nano \
    lsb-release \
    ca-certificates \
    sudo \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

RUN useradd -m -s /bin/bash challenge3_2_1 && \
    echo "challenge3_2_1:challenge3_2_1" | chpasswd
RUN echo "challenge3_2_1 ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

WORKDIR /home/challenge3_2_1

COPY echo.sh /home/challenge3_2_1/echo.sh
RUN chmod 700 /home/challenge3_2_1/echo.sh && \
    chown challenge3_2_1:challenge3_2_1 /home/challenge3_2_1/echo.sh

COPY echo_test.sh /home/challenge3_2_1/echo_test.sh
RUN chmod 700 /home/challenge3_2_1/echo_test.sh && \
    chown root:root /home/challenge3_2_1/echo_test.sh

USER challenge3_2_1

CMD ["/bin/bash"]