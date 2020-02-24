# drone-yaml-verify
[![Build Status](https://cloud.drone.io/api/badges/viant/drone-yaml-verify/status.svg)](https://cloud.drone.io/viant/drone-yaml-verify)
[![License: GPL v3](https://img.shields.io/badge/License-GPLv3-blue.svg)](https://github.com/viant/drone-yaml-verify/blob/master/LICENSE)

Drone plugin to validate YAML files.

## Usage

* `files` An array of file(s)

* `dirs` An array of path(s) that have `.yaml` files

* `debug` if True will print out the results of `yq` along with any plugin parameters 

## Example

```yaml
kind: pipeline
name: default

steps:

- name: test
  image: viant/drone-yaml-verify:latest
  settings:
    dirs:
      - path/to/some/yaml
      - another/path/to/some/yaml
    files:
      - path/to/file.yaml
      - pathfile.yaml
```

