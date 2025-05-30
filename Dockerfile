# Use an official Ollama base image
FROM ollama/ollama:latest

# Expose the port Ollama uses
EXPOSE 11434

# Install models
RUN ollama pull aimatch/promptgen:llama32
RUN ollama pull benevolentjoker/nsfwmonika

# Command to run when the container starts
CMD ollama serve
