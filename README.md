# GPT2Giga Proxy Server

This project provides a Dockerized solution for running a proxy server using the `gpt2giga` library. It allows easy access to the GigaChat AI model through a simple HTTP interface.

## Features

- Containerized deployment using Docker.
- Supports customization via environment variables.
- Easy setup with minimal configuration required.

## Prerequisites

Before getting started, ensure you have the following installed:

- Docker
- Docker Compose (optional but recommended)

## Getting Started

### Build and Run Using Docker Compose

1. Clone the repository:

```bash
git clone https://github.com/yourusername/gpt2giga-proxy.git
cd gpt2giga-proxy
```

2. Start the service:

```bash
docker-compose up -d
```

3. Access the server at http://localhost:8090/.

### Custom Configuration

You can customize various aspects of the server by modifying the `.env` file or passing environment variables directly during runtime. Some key settings include:

- `GIGACHAT_BASE_URL`: Base URL for accessing the GigaChat API.
- `GIGACHAT_MODEL`: Model version to use (e.g., `GigaChat-2-Max`).
- `GIGACHAT_USER`: Username for authentication.
- `GIGACHAT_CREDENTIALS`: Credentials for authentication.

For detailed instructions on available options, refer to the documentation of the `gpt2giga` library.

## Contributing

Contributions are welcome! Please follow our contribution guidelines before submitting pull requests.

## License

This project is licensed under the MIT License - see the LICENSE file for details.

