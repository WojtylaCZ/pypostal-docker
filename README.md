# pypostal-docker

This is a Docker image with [pypostal](https://github.com/openvenues/pypostal) (Python bindings for [libpostal](https://github.com/openvenues/libpostal))

[Github](https://github.com/wojtylacz/pypostal-docker) | [Docker Hub](https://hub.docker.com/r/wojtylacz/pypostal-docker/)

# Usage

Extend this Dockerfile or use as a base image for the task you need.

In your Dockerfile:
```
FROM wojtylacz/pypostal-docker

# execute your python script where you import postal
```

## pypostal usage

```python
from postal.expand import expand_address
expand_address('Quatre vingt douze Ave des Champs-Élysées')

from postal.parser import parse_address
parse_address('The Book Club 100-106 Leonard St, Shoreditch, London, Greater London, EC2A 4RH, United Kingdom')
```
For additional details, please see the [pypostal](https://github.com/openvenues/pypostal) project.


# Contribution

Based on a original solution using [pypostal and jupyter](https://github.com/riordan/docker-jupyter-libpostal/blob/master/README.md).
