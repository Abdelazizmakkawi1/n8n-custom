FROM n8nio/n8n:latest

# Install Python 3 and pip
RUN apk add --no-cache python3 py3-pip

# Keep the original n8n entrypoint
ENTRYPOINT ["tini", "--"]
CMD ["n8n"]
