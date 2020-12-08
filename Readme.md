# Build tools

## Compilation

We provide bash scripts to compile the code on 

* Fedora using the HPX package (buildFedora.sh)
* Fedora building HPX (buildFedoraAll.sh)
* Ubuntu 18.04 using libvtk7-dev
* Ubuntu 16.04 


## Docker

We provide Dokcerfiles to build the latest stable version of NLMech on

* [Fedora](https://github.com/nonlocalmodels/NLMech/packages/384758?version=stable)  using the HPX package (Docker/Fedora)
* Fedora compiling HPX (Docker/FedoraAll)

You have to install [Docker](https://docs.docker.com/) on your local machine and can play around with the code as following

```bash
cd Docker
docker build --tag=playground -f Fedora .
docker run playground
```

after the second command you will have a temrinal and can run the examples.

Note that the performance of the code in the docker image is not optimal and we recommend to compile the code on your own to get better performance.



