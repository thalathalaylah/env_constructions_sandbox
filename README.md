# env_constructions_sandbox
Ubuntu based sandbox for [env_constructions](https://github.com/thalathalaylah/env_constructions)

# Usage

```
docker build . -t env_sandbox
docker run -d -it --name <container_name> env_sandbox
docker exec -u test -it <container_id> /bin/sh
```

