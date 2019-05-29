local pipeline = import 'pipeline.libsonnet';
local name = 'webhippie/solder';

[
  pipeline.build(name, 'latest', 'latest', 'amd64'),
  pipeline.build(name, 'latest', 'latest', 'arm32v6'),
  pipeline.build(name, 'latest', 'latest', 'arm64v8'),
  pipeline.manifest('latest', 'latest', ['amd64', 'arm32v6', 'arm64v8']),
  pipeline.build(name, 'v0.7', '0.7', 'amd64'),
  pipeline.build(name, 'v0.7', '0.7', 'arm32v6'),
  pipeline.build(name, 'v0.7', '0.7', 'arm64v8'),
  pipeline.manifest('v0.7', '0.7', ['amd64', 'arm32v6', 'arm64v8']),
  pipeline.microbadger(['latest', '0.7']),
]
