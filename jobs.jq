. | map(
  . * {
    commit: .commit.short_id,
    pipeline: .pipeline.id,
    runner: .runner.id,
    artifacts: (reduce .artifacts[].size as $item (0; . + $item))
  }
  | del(.user) | del(.tag) | del(.ref) | del(.artifacts_expire_at) | del(.web_url) | del(.allow_failure) | del(.artifacts_file))
