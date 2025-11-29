FROM debian:stable
RUN apt-get update && \
    apt-get install -y \
        nano \
        sudo \
        build-essential \
        curl \
        acl \
        7kaa \
        p7zip \
        p7zip-full \
        unrar-free \
        mandoc  \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*



# Copy the wrapper script into the image
COPY entrypoint.sh .

# Ensure it is executable
RUN chmod +x entrypoint.sh

# Default command: open a Bash shell
ENTRYPOINT ["./entrypoint.sh"]

CMD ["/bin/bash"]
