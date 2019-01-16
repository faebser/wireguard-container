# Running wireguard in a docker container

## Questions

* wireguard is a kernel-module/is integrated in the kernel. Does it make sense to run it a container?
* Does the container in the end manipulate the network interfaces of the host?
* How is the flow of packages between host and container?

## Links

* [Routing and Network Namespace Integration](https://www.wireguard.com/netns/)
    - It briefly mentions docker containers but is also really heavy on concepts that I do not fully understand
