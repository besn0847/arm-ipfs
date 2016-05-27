# arm-ipfs

To start the container with default config :
```bash
docker run -d arm-ipfs 
```

But you can also use your local datastores :
```bash
docker run -d -p 8080:8080 -p 4001:4001 -p 127.0.0.1:5001:5001 -v <your local ipfs folder>:/data/ipfs arm-ipfs
```

This last command will expose the webui locally on your docker host at http://localhost:5001/webui/. So if you want to interact remotely, you need to ssh to your host and redirect local 5001 & 8080 ports to the Docker host.
```
ssh -L 5001:localhost:5001 -L 8080:localhost:8080 <your_user_name>@<your_dockerhost>
```

To interact with the IPFS command line, just connect to the container :
```
docker exec -ti arm-ipfs arm-ipfs
```

This container does not work on Raspberry 1 (arm v6).
