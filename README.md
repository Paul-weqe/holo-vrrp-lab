

# Building
*This is how we create the docker image that will be used by containerlab*

```bash 
./build.sh
```

# Running the lab 
run the following commands:

```bash
cd vrrp-lab
./deploy.sh
```

This should start two containers, rt-1 and rt-2.


# Configuration

Log into rt-1 by running:

```bash
docker exec -ti clab-vrrp-rt-1 holo-cli
```
You can now copy and paste the contents of the rt-1.conf in order to configure it with vrrp. 


