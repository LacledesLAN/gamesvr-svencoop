# Sven Co-op Dedicated Server in Docker

Sven Co-op (abbreviated as SC) is a co-op variation of the 1998 first-person shooter Half-Life. The game, initially released as a mod in January 1999, enables players to play together on online servers to complete levels, many which are based on the Half-Life universe but include other genres. The standalone release, available free of charge, representing version 5.0 of the mod, was released in January 2016.

![Sven Co-op Screenshot](https://raw.githubusercontent.com/LacledesLAN/gamesvr-svencoop/master/.misc/screenshot1.jpg "Sven Co-op Screenshot")

This repository is maintained by [Laclede's LAN](https://lacledeslan.com). Its contents are intended to be bare-bones and used as a stock server. For examples of building a customized server from this Docker image browse its related child-project [gamesvr-svencoop-freeplay](https://github.com/LacledesLAN/gamesvr-svencoop-freeplay). If any documentation is unclear or it has any issues please see [CONTRIBUTING.md](./CONTRIBUTING.md).


## Linux
[![](https://images.microbadger.com/badges/version/lacledeslan/gamesvr-svencoop.svg)](https://microbadger.com/images/lacledeslan/gamesvr-svencoop "Get your own version badge on microbadger.com")
[![](https://images.microbadger.com/badges/image/lacledeslan/gamesvr-svencoop.svg)](https://microbadger.com/images/lacledeslan/gamesvr-svencoop "Get your own image badge on microbadger.com")

**Download**
```
docker pull lacledeslan/gamesvr-svencoop;
```

**Run Interactive Server**
```
docker run svends_run -it --rm lacledeslan/gamesvr-svencoop ./svends_run -num_edicts 3072 +sv_lan 1;
```

**Run Self Tests**
```
docker run -it --rm lacledeslan/gamesvr-svencoop ./ll-tests/gamesvr-svencoop.sh;
```

## Getting Started with Game Servers in Docker

[Docker](https://docs.docker.com/) is an open-source project that bundles applications into lightweight, portable, self-sufficient containers. For a crash course on running Dockerized game servers check out [Using Docker for Game Servers](https://github.com/LacledesLAN/README.1ST/blob/master/GameServers/DockerAndGameServers.md). For tips, tricks, and recommended tools for working with Laclede's LAN Dockerized game server repos see the guide for [Working with our Game Server Repos](https://github.com/LacledesLAN/README.1ST/blob/master/GameServers/WorkingWithOurRepos.md). You can also browse all of our other Dockerized game servers: [Laclede's LAN Game Servers Directory](https://github.com/LacledesLAN/README.1ST/tree/master/GameServers).
