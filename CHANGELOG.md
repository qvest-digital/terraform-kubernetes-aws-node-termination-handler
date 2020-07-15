# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [2.0.0] - 2020-07-15

This release introduces some breaking changes, because the *default values* of some
of the options have been changed with the introduction of configurable behavior.
Make sure to tune all configurable variables to your needs prior to upgrading to
this new module version.

### Added

- Lots of variables have been added to allow changing the behavior of the node
  termination handler.

## [1.2.0] - 2020-07-15

### Added

- A new variable (`enable_prometheus_server`) has been added that can be used to
  enable the prometheus server endpoint that can be used to gain some metrics.

### Fixed

- A "node anti affinity" term has been added to the Daemon set to ensure that
  workloads will never be scheduled on Fargate nodes.

### Updated

- Default version of the aws-node-termination-handler has been set to v1.6.1.

## [1.1.0] - 2020-05-11

### Added

- Node affinity has been changed to allow the node termination handler to run on
  instances backed by `arm` or `arm64` architecture.

### Updated

- Default version of the aws-node-termination-handler has been set to v1.4.0.

### Changed

- Missing `securityContext` has been added.
- Default `nodeSelector` and `tolerations` settings have been changed.

## [1.0.1] - 2020-05-04

### Fixed

- Node selector parameter (which was ignored in the previous version)
  does now work as supposed to.

## [1.0.0] - 2020-05-04

### Added

- Initial version
