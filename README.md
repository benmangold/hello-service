# container-image-template

Building, testing and publishing images with Docker, Dive, Goss and Snyk.

Requires Docker, curl, wget.

A docker image is published upon tag creation.  Release automation configured in `.github/workflows/tag.yaml`.

## local use

```bash
# install dependencies, build image from Dockerfile, run tests and scans
make ci

```

Other `make` commands available:

```bash
make install # install dependencies
make build-image # build image from Dockerfile
make test # run tests and scans

```
