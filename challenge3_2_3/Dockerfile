FROM ubuntu:20.04

RUN apt-get update && apt-get install -y \
    bash \
    nano \
    sudo \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

RUN useradd -m -s /bin/bash challenge3_2_3 && \
    echo "challenge3_2_3:haady" | chpasswd

RUN echo "challenge3_2_3 ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

RUN mkdir -p /home/challenge3_2_3/challenge3_2_3

COPY addOne.sh /home/challenge3_2_3/challenge3_2_3/addOne.sh

RUN chmod 700 /home/challenge3_2_3/challenge3_2_3/addOne.sh && \
    chown challenge3_2_3:challenge3_2_3 /home/challenge3_2_3/challenge3_2_3/addOne.sh

COPY addOne_test.sh /home/challenge3_2_3/challenge3_2_3/addOne_test.sh

RUN chmod 700 /home/challenge3_2_3/challenge3_2_3/addOne_test.sh && \
    chown root:root /home/challenge3_2_3/challenge3_2_3/addOne_test.sh

USER challenge3_2_3
WORKDIR /home/challenge3_2_3/
CMD ["/bin/bash"]