FROM ubuntu:20.04

RUN apt-get update && apt-get install -y \
    rsync \
    curl \
    vim \
    bash \
    sudo \
    nano \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

RUN useradd -m -s /bin/bash challenge3_2_2 && \
    echo "challenge3_2_2:haady" | chpasswd
RUN echo "challenge3_2_2 ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

RUN mkdir -p /home/challenge3_2_2/challenge3_2_2

COPY division.sh /home/challenge3_2_2/challenge3_2_2/division.sh

RUN chmod 700 /home/challenge3_2_2/challenge3_2_2/division.sh && \
    chown challenge3_2_2:challenge3_2_2 /home/challenge3_2_2/challenge3_2_2/division.sh

COPY division_test.sh /home/challenge3_2_2/challenge3_2_2/division_test.sh

RUN chmod 700 /home/challenge3_2_2/challenge3_2_2/division_test.sh && \
    chown root:root /home/challenge3_2_2/challenge3_2_2/division_test.sh

USER challenge3_2_2
WORKDIR /home/challenge3_2_2/
CMD ["/bin/bash"]




