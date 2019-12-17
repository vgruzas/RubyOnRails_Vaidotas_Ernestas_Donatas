# frozen_string_literal: true

# :nodoc:
Spring.watch(
  '.ruby-version',
  '.rbenv-vars',
  'tmp/restart.txt',
  'tmp/caching-dev.txt'
)
