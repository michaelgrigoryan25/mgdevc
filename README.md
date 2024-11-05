# mgdevc

This project is a Podman-based development environment that includes a variety of tools and dependencies for software development. The Dockerfile sets up an Ubuntu 24.04 environment with essential development tools, Node.js, Python, and Playwright.

## Table of Contents

- [mgdevc](#mgdevc)
  - [Table of Contents](#table-of-contents)
  - [Getting Started](#getting-started)
    - [Prerequisites](#prerequisites)
    - [Installation](#installation)
  - [Usage](#usage)
  - [Contributing](#contributing)
  - [License](#license)

## Getting Started

These instructions will help you set up the development environment on your local machine.

### Prerequisites

Make sure you have Podman installed on your system. You can download and install Podman from [here](https://podman.io/getting-started/installation). Alternatively, you can use Docker.

### Installation

1. Clone the repository to your local machine:

   ```sh
   git clone https://github.com/michaelgrigoryan25/mgdevc.git
   cd mgdevc
   ```

2. Build the Podman container using the provided Dockerfile:

   ```sh
   podman build -t mgdevc .
   ```

3. Run the Podman container:

   ```sh
   podman run -it --rm --name mgdevc-container mgdevc
   ```

4. (Optional) If you prefer to use Docker, you can build and run the container with the following commands:

   ```sh
   podman build -t mgdevc .
   podman run -it --rm --name mgdevc-container mgdevc
   ```

Once the Podman container is running, you will have access to a fully set up development environment with the following tools and dependencies:

- **Git**: Version control system
- **Node.js**: JavaScript runtime
- **npm**: Node package manager
- **Yarn**: Alternative package manager for Node.js
- **Python 3**: Programming language
- **pip**: Python package installer
- **Playwright**: End-to-end testing framework
- **Python packages**: `requests`, `pytest`, `black`, `flake8`, `pycryptodome`
- **Rust**: Systems programming language
  - rustfmt: Code formatter
  - clippy: Linter
  - rust-analyzer: Language server
- **Go**: Programming language (version 1.22.4)
- **Development tools**: `vim`, `nano`, `htop`, `net-tools`, `iputils-ping`

You can start using these tools directly within the Podman container.

## Contributing

Contributions are welcome! Please fork the repository and create a pull request with your changes. Make sure to follow the coding standards and include appropriate tests.

1. Fork the repository
2. Create a new branch (`git checkout -b feature-branch`)
3. Make your changes
4. Commit your changes (`git commit -m 'Add some feature'`)
5. Push to the branch (`git push origin feature-branch`)
6. Create a new Pull Request

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for more details.
