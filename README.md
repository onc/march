# maRcH

Start an Archlinux docker-container and mount the current directory into the container.

I use this container to run software which is not available or compatible with macOS (Sierra) like valgrind.
But you could also use this container to compile and test your code on linux.

![screenshot](https://github.com/onc/march/blob/master/screenshots/screenshot.png)

## Installation

Install [docker](https://docs.docker.com/docker-for-mac/).

Clone this Repository, change into the folder and run:

```sh
docker build --force-rm -t march .
```

- `--force-rm` removes the intermediate containers
- `-t` sets the name for the container

## Usage

To run this container, change into a folder where you need arch and run:

```sh
docker run --rm -it -v `pwd`:/app march
```

Alias for this command:

```sh
function ch-arch() {
    docker run --rm -it -v $PWD:/app onc-arch
}
```

## Configuration

This container includes zsh, [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh) and a minimal zsh configuration.

Other packages include:

- `base` - group
- `base-devel` - group (includes `make`, `gcc`, `autoconf`, ...)
- `clang`
- `valgrind`
- `cmake`
- `git`
