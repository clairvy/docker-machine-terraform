# use terraform to do docker-machine create on aws

## Run

```
$ docker-compose run --rm app terraform plan
$ docker-compose run --rm app terraform apply
$ docker-machine create my-aws
```

## Prerequire

```
$ cp local.env.sample local.env   # You can change varialbles
```
