# `docker compose`'s experimental `watch` example

A working example to test `docker compose`'s experimental `watch`.

## Usage

```zsh
# Build:
docker compose build

# Start containers:
docker compose up -d

# Open the page with browser:
open http://localhost:8000

# Watch:
docker compose alpha watch

# Try changing files in `site/src/` or `site/gatsby-config.js` to see the watch works.

# Stop containers:
docker compose down
```

## Environment tested on

```zsh
❯ docker --version
Docker version 20.10.24, build 297e128

❯ docker compose version
Docker Compose version v2.17.2
```

`docker version`:

```text
Client:
 Cloud integration: v1.0.31
 Version:           20.10.24
 API version:       1.41
 Go version:        go1.19.7
 Git commit:        297e128
 Built:             Tue Apr  4 18:21:21 2023
 OS/Arch:           darwin/arm64
 Context:           default
 Experimental:      true

Server: Docker Desktop 4.18.0 (104112)
 Engine:
  Version:          20.10.24
  API version:      1.41 (minimum version 1.12)
  Go version:       go1.19.7
  Git commit:       5d6db84
  Built:            Tue Apr  4 18:17:07 2023
  OS/Arch:          linux/arm64
  Experimental:     false
 containerd:
  Version:          1.6.18
  GitCommit:        2456e983eb9e37e47538f59ea18f2043c9a73640
 runc:
  Version:          1.1.4
  GitCommit:        v1.1.4-0-g5fd4c4d
 docker-init:
  Version:          0.19.0
  GitCommit:        de40ad0
```

The files in `site/` were generated with `npm init gatsby` and `create-gatsby@3.9.0`.

## Reference

- [Automatically update services with file watch | Docker Documentation](https://docs.docker.com/compose/file-watch/)
- [Docker Compose Experiment: Sync Files and Automatically Rebuild Services with Watch Mode](https://www.docker.com/blog/docker-compose-experiment-sync-files-and-automatically-rebuild-services-with-watch-mode/)
- [GitHub - dockersamples/avatars: Sample project for the Tilt getting started tutorial](https://github.com/dockersamples/avatars)
- [2.16.0 | Docker Compose release notes | Docker Documentation](https://docs.docker.com/compose/release-notes/#2160)
  - 2023-02-08
  - In this release the experimantal `watch` command was introduced.
