# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

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
