# `docker compose watch` example

A working example to test `docker compose watch`.

> Use `watch` to automatically update and preview your running Compose services as you edit and save your code.
>
> For many projects, this allows for a hands-off development workflow once Compose is running, as services automatically update themselves when you save your work.
>
> ―― [Automatically update services with file watch | Docker Documentation](https://docs.docker.com/compose/file-watch/)

## Usage

```zsh
# Build:
docker compose build

# Start containers:
docker compose up -d

# Open the page with browser:
open http://localhost:8000

# Watch:
docker compose watch

# Try changing files in `site/src/` or `site/gatsby-config.js` to see the watch works.

# Stop containers:
docker compose down
```

## Environment tested on

```zsh
❯ docker --version
Docker version 24.0.6, build ed223bc

❯ docker compose version
Docker Compose version v2.23.0-desktop.1
```

`docker version`:

```text
Client:
 Cloud integration: v1.0.35+desktop.5
 Version:           24.0.6
 API version:       1.43
 Go version:        go1.20.7
 Git commit:        ed223bc
 Built:             Mon Sep  4 12:28:49 2023
 OS/Arch:           darwin/arm64
 Context:           desktop-linux

Server: Docker Desktop 4.25.0 (126437)
 Engine:
  Version:          24.0.6
  API version:      1.43 (minimum version 1.12)
  Go version:       go1.20.7
  Git commit:       1a79695
  Built:            Mon Sep  4 12:31:36 2023
  OS/Arch:          linux/arm64
  Experimental:     false
 containerd:
  Version:          1.6.22
  GitCommit:        8165feabfdfe38c65b599c4993d227328c231fca
 runc:
  Version:          1.1.8
  GitCommit:        v1.1.8-0-g82f18fe
 docker-init:
  Version:          0.19.0
  GitCommit:        de40ad0
```

The files in `site/` were generated with `npm init gatsby` and `create-gatsby@3.9.0`.

## Reference

### GA (Docker Compose `2.22.0`-)

- [Announcing Docker Compose Watch GA Release](https://www.docker.com/blog/announcing-docker-compose-watch-ga-release/)
- [Docker Desktop 4.24: Compose Watch, Resource Saver, and Docker Engine](https://www.docker.com/blog/docker-desktop-4-24-compose-watch-resource-saver-and-docker-engine/)
- [2.22.0 | Docker Compose release notes | Docker Documentation](https://docs.docker.com/compose/release-notes/#2220)
  - 2023-09-21
  - In this release the `watch` command became GA.

### Experimental (Docker Compose `2.16.0`-`2.21.0`)

- [Automatically update services with file watch | Docker Documentation](https://docs.docker.com/compose/file-watch/)
- [Docker Compose Experiment: Sync Files and Automatically Rebuild Services with Watch Mode](https://www.docker.com/blog/docker-compose-experiment-sync-files-and-automatically-rebuild-services-with-watch-mode/)
- [GitHub - dockersamples/avatars: Sample project for the Tilt getting started tutorial](https://github.com/dockersamples/avatars)
- [2.16.0 | Docker Compose release notes | Docker Documentation](https://docs.docker.com/compose/release-notes/#2160)
  - 2023-02-08
  - In this release the experimantal `watch` command was introduced.
