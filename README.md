# PPGCA

## Repo from Database class

This repository is being developed as a collection of useful code and tools related to the database class from PPGCA (Programa de Pŕos Graduação em Computação Aplicada) from the IFMA. (Instituto Federal do Maranhão).

### Setup

- Install Docker and Docker Compose: https://docs.docker.com/engine/install/ubuntu/#install-using-the-repository


### Relational Databases

PostgreSQL was the choosen engine to work on practical examples. It's possible to start a local postgre instance and a pgadmin web interface using the following command: `make start-postgres-and-client`. Similarly, it is possible to stop both containers by using `make stop-postgres-and-client`.

To make the test environment as reproducible as possible, the docker images used on the containers are using fixed tags.

