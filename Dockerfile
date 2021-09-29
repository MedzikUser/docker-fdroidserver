FROM registry.gitlab.com/fdroid/docker-executable-fdroidserver:latest 
RUN apt-get update && \
    apt-get install -y --no-install-recommends ssh && \
    rm -rf /var/lib/apt/lists/*
RUN pip3 install fdroidserver
RUN mkdir -p /usr/local/share/doc && ln -s /usr/share/doc/fdroidserver /usr/local/share/doc/fdroidserver

ENTRYPOINT ["sh"]
CMD [""]
