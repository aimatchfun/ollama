# Use an official Ollama base image with specific version
FROM ollama/ollama:0.1.27

# Expose the port Ollama uses
EXPOSE 11434

# Install official models in a single layer
RUN ollama pull llama2 && \
    ollama pull mistral

# Add healthcheck to verify the service is running
HEALTHCHECK --interval=30s --timeout=10s --start-period=5s --retries=3 \
    CMD curl -f http://localhost:11434/api/tags || exit 1

# Use ollama as the entrypoint
ENTRYPOINT ["ollama"]
