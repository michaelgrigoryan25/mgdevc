FROM docker.io/library/ubuntu:24.04

# Combine RUN commands to reduce layers and set DEBIAN_FRONTEND to avoid interactive prompts
RUN DEBIAN_FRONTEND=noninteractive apt update -y && \
    apt install -y \
    git \
    nodejs \
    npm \
    python3 \
    pip \
    python-is-python3 \
    build-essential \
    libssl-dev \
    libffi-dev \
    python3-dev \
    curl \
    wget \
    vim \
    nano \
    htop \
    net-tools \
    iputils-ping

# Upgrade npm and install some global packages
RUN npm i -g npm && \
    npm i -g yarn

# Install Playwright dependencies and browser binaries
RUN npx playwright install
RUN npx playwright install-deps

# Upgrade pip and install common Python packages
RUN pip install --no-cache-dir --upgrade \
    pip \
    setuptools \
    wheel \
    pycryptodome \
    # Added useful Python packages
    requests \
    pytest \
    black \
    flake8

# Install Rust
RUN curl https://sh.rustup.rs -sSf | sh -s -- -y

# Install Rust tools
RUN rustup component add rustfmt
RUN rustup component add clippy
RUN cargo install --locked rust-analyzer

# Install Go
RUN curl -fsSL https://go.dev/dl/go1.22.4.linux-amd64.tar.gz -o go.tar.gz && \
    tar -C /usr/local -xzf go.tar.gz && \
    rm go.tar.gz

# Set up Go environment
ENV GOROOT=/usr/local/go
ENV GOPATH=$HOME/go
ENV PATH=$GOPATH/bin:$GOROOT/bin:$PATH

CMD tail -f /dev/null
