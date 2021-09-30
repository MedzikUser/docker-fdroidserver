FROM wonko21/fdroidserver:latest

RUN apt-get update && \
    apt-get upgrade -y

RUN curl -fsSL https://deb.nodesource.com/setup_lts.x | bash && \
    apt-get install -y nodejs
