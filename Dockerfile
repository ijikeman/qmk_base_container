FROM debian:12.10-slim

# This is a base container for QMK development. It includes the following tools:
# Reference: https://github.com/qmk/qmk_base_container
RUN apt-get update && apt-get install --no-install-recommends -y \
    avrdude \
    binutils-arm-none-eabi \
    binutils-riscv64-unknown-elf \
    build-essential \
    ca-certificates \
    clang-format \
    dfu-programmer \
    dfu-util \
    dos2unix \
    gcc \
    gcc-arm-none-eabi \
    gcc-riscv64-unknown-elf \
    git \
    libfl2 \
    libnewlib-arm-none-eabi \
    picolibc-riscv64-unknown-elf \
    python3 \
    python3-pip \
    software-properties-common \
    tar \
    teensy-loader-cli \
    unzip \
    tar \
    wget \
# For exec qmk_install.sh
    sudo \
# For exec qmk setup
    python3-venv \
    zip && rm -rf /var/lib/apt/lists/*

# upgrade avr-gcc... for reasons?
ARG TARGETPLATFORM
RUN if [ "$TARGETPLATFORM" != 'linux/arm64' ]; then \
        echo 'a1a88c3d375d2fb6f428b743f79b8f69  -' > /tmp/md5sum.txt && \
        wget -q https://github.com/ZakKemble/avr-gcc-build/releases/download/v14.1.0-1/avr-gcc-14.1.0-x64-linux.tar.bz2 -O - | tee /tmp/asdf.tar.bz2 | md5sum -c /tmp/md5sum.txt && \
        tar xfj /tmp/asdf.tar.bz2 -C / && \
        rm -rf /share/ /tmp/*; \
    fi

# except on platforms we cannot...
RUN if [ "$TARGETPLATFORM" == 'linux/arm64' ]; then \
        apt-get update && apt-get install --no-install-recommends -y \
            avr-libc \
            binutils-avr \
            gcc-avr \
        && rm -rf /var/lib/apt/lists/*; \
    fi

# Install python packages
RUN python3 -m venv /.venv
ENV PATH="/.venv/bin:$PATH"
# Install python packages
RUN python3 -m pip install --upgrade pip setuptools wheel
RUN python3 -m pip install nose2 yapf flake8
