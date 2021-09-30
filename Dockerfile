FROM wonko21/fdroidserver:latest

RUN apt-get update && \
    apt-get upgrade -y && \
    rm -rf /var/lib/apt/lists/* && \
    apt-get clean

RUN curl -fsSL https://deb.nodesource.com/setup_lts.x | bash && \
    apt-get install -y nodejs && \
    rm -rf /var/lib/apt/lists/* && \
    apt-get clean
