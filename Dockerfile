FROM n8nio/n8n:latest

# Install Python 3 and pip
RUN apt-get update && \
    apt-get install -y python3 python3-pip && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Keep the original n8n entrypoint
ENTRYPOINT ["tini", "--"]
CMD ["n8n"]
