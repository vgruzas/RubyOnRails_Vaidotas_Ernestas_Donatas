# frozen_string_literal: true

# :nodoc:
class ApplicationJob < ActiveJob::Base
  # Automatically retry jobs that encountered a deadlock
  # retry_on ActiveRecord::Deadlocked

  # discard_on ActiveJob::DeserializationError
end
