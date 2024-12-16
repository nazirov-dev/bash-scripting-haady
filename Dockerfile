FROM ubuntu:20.04

# Install required packages
RUN apt-get update && apt-get install -y \
    bash \
    sudo \
    nano \
    vim \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Set up challenge3_2_1 user
RUN useradd -m -s /bin/bash challenge3_2_1 && \
    echo "challenge3_2_1:haady" | chpasswd
RUN echo "challenge3_2_1 ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers
RUN mkdir /home/challenge3_2_1/challenge3_2_1

# Copy and configure challenge3_2_1 files
COPY challenge3_2_1/echo.sh /home/challenge3_2_1/challenge3_2_1/echo.sh
RUN chmod 700 /home/challenge3_2_1/challenge3_2_1/echo.sh && \
    chown challenge3_2_1:challenge3_2_1 /home/challenge3_2_1/challenge3_2_1/echo.sh

COPY challenge3_2_1/echo_test.sh /home/challenge3_2_1/challenge3_2_1/echo_test.sh
RUN chmod 700 /home/challenge3_2_1/challenge3_2_1/echo_test.sh && \
    chown root:root /home/challenge3_2_1/challenge3_2_1/echo_test.sh

# Set up challenge3_2_2 user
RUN useradd -m -s /bin/bash challenge3_2_2 && \
    echo "challenge3_2_2:haady" | chpasswd
RUN echo "challenge3_2_2 ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers
RUN mkdir -p /home/challenge3_2_2/challenge3_2_2

# Copy and configure challenge3_2_2 files
COPY challenge3_2_2/division.sh /home/challenge3_2_2/challenge3_2_2/division.sh
RUN chmod 700 /home/challenge3_2_2/challenge3_2_2/division.sh && \
    chown challenge3_2_2:challenge3_2_2 /home/challenge3_2_2/challenge3_2_2/division.sh

COPY challenge3_2_2/division_test.sh /home/challenge3_2_2/challenge3_2_2/division_test.sh
RUN chmod 700 /home/challenge3_2_2/challenge3_2_2/division_test.sh && \
    chown root:root /home/challenge3_2_2/challenge3_2_2/division_test.sh

# Set up challenge3_2_3 user
RUN useradd -m -s /bin/bash challenge3_2_3 && \
    echo "challenge3_2_3:haady" | chpasswd
RUN echo "challenge3_2_3 ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers
RUN mkdir -p /home/challenge3_2_3/challenge3_2_3

# Copy and configure challenge3_2_3 files
COPY challenge3_2_3/addOne.sh /home/challenge3_2_3/challenge3_2_3/addOne.sh
RUN chmod 700 /home/challenge3_2_3/challenge3_2_3/addOne.sh && \
    chown challenge3_2_3:challenge3_2_3 /home/challenge3_2_3/challenge3_2_3/addOne.sh

COPY challenge3_2_3/addOne_test.sh /home/challenge3_2_3/challenge3_2_3/addOne_test.sh
RUN chmod 700 /home/challenge3_2_3/challenge3_2_3/addOne_test.sh && \
    chown root:root /home/challenge3_2_3/challenge3_2_3/addOne_test.sh

# Set final configuration
USER challenge3_2_1
WORKDIR /home/challenge3_2_1/
CMD ["/bin/bash"]