# Half-Life Deathmatch: Source Dedicated Server in Docker

## Linux
[![](https://images.microbadger.com/badges/version/lacledeslan/gamesvr-svencoop.svg)](https://microbadger.com/images/lacledeslan/gamesvr-svencoop "Get your own version badge on microbadger.com")
[![](https://images.microbadger.com/badges/image/lacledeslan/gamesvr-svencoop.svg)](https://microbadger.com/images/lacledeslan/gamesvr-svencoop "Get your own image badge on microbadger.com")

**Download**
```
docker pull lacledeslan/gamesvr-svencoop
```

**Run Interactive Server**
```
docker run svends_run -it --rm lacledeslan/gamesvr-svencoop ./svends_run -num_edicts 3072 +sv_lan 1
```

**Run Self Tests**
```
docker run -it --rm lacledeslan/gamesvr-svencoop ./ll-tests/gamesvr-svencoop.sh
```
