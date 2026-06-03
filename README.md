# PPGCA

## Repo from Database class

This repository is being developed as a collection of useful code and tools related to the database class from PPGCA (Programa de Pós Graduação em Computação Aplicada) from the IFMA. (Instituto Federal do Maranhão).

### Setup

- Install Docker and Docker Compose: https://docs.docker.com/engine/install/ubuntu/#install-using-the-repository


### Relational Databases

PostgreSQL was the choosen engine to work on practical examples. It's possible to start a local postgre instance and a pgadmin web interface using the following command: `make start-postgres-and-client`. Similarly, it is possible to stop both containers by using `make stop-postgres-and-client`.

To make the test environment as reproducible as possible, the docker images used on the containers are using fixed tags.

#### Commands

- Start a postgres instance and a pgadmin client: `make start-postgres-and-client`
- Stop both containers: the database instance and the pdadmin client (keeping the database volume): `make stop-postgres-and-client`
- Stop both containers deleting the database volume (could be used to delete the volume at any time): `make stop-postgres-and-client-and-remove-volume`

#### pgAdmin

The client named as pgAdmin requires its own user and password to do the authentication. For now, this repo uses: `ppgca@ifma.com` as the default email account and `ppgca` as the default password.

#### PostgreSQL

The instance could be accessed by its default credentials: `postgres` for both the user and the password.

### NoSQL Databases

MongoDB was the choosen database to work in the practical examples.

#### Commands

- Start a MongoDB instance and a mongo-express client: `make start-mongo-and-client`
- Stop both containers: the database instance and the mongo-express client: `make stop-mongo-and-client`

#### Mongo-express

The client named as mongo-express requires its own user and password to do the authentication. For now, this repo uses: `mongoexpressuser` as the default user and `mongoexpresspass` as the default password.

#### Mongo

The instance could be accessed by its default credentials: `mongo` for the user and `mongo_pwd` for the password.