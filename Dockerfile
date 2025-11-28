FROM debian:stable-slim

# Install any minimal dependencies you might need (optional)
RUN apt-get update && apt-get install -y --no-install-recommends \
        sudo \
    && rm -rf /var/lib/apt/lists/*

# Copy the wrapper script into the image
COPY newshell /usr/local/bin/newshell

# Ensure it is executable
RUN chmod +x /usr/local/bin/newshell

# Default command: open a Bash shell
CMD ["/bin/bash"]
