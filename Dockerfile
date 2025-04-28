# Use official Python slim image
FROM python:3.9-slim

# Set work directory
WORKDIR /app

# Install dependencies for building and git
RUN apt-get update -y && \
    apt-get upgrade -y && \
    apt-get install -y --no-install-recommends git curl && \
    rm -rf /var/lib/apt/lists/*

# Copy project files into container
COPY . /app

# Install
RUN pip install git+https://github.com/ai-forever/gpt2giga.git

# Install root cert
RUN curl -k "https://gu-st.ru/content/Other/doc/russian_trusted_root_ca.cer" -w "\n" >> $(python -m certifi)

# Copy example env (if .env not provided)
RUN [ -f .env ] || cp .env.example .env

# Expose default port for gpt2giga
EXPOSE 8090

# Default command: start the gpt2giga proxy
CMD ["gpt2giga", "--host", "0.0.0.0", "--port", "8090"]
