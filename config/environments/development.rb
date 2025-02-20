require "active_support/core_ext/integer/time"

Rails.application.configure do
  # Eager load code on boot to improve performance.
  config.eager_load = true

  # Full error reports are disabled for security reasons.
  config.consider_all_requests_local = false

  # Enable server timing
  config.server_timing = true

  # Enable caching with a memory store.
  config.cache_store = :memory_store
  config.action_controller.perform_caching = true

  # Store uploaded files on the local file system (see config/storage.yml for options).
  config.active_storage.service = :local

  # Use default logging formatter so that PID and timestamp are not suppressed.
  config.log_formatter = ::Logger::Formatter.new

  # Use a different cache store in production.
  # config.cache_store = :mem_cache_store

  # Use a real queuing backend for Active Job (and separate queues per environment).
  # config.active_job.queue_adapter     = :resque
  # config.active_job.queue_name_prefix = "your_app_production"

  # Enable locale fallbacks for I18n (makes lookups for any locale fall back to the I18n.default_locale when a translation cannot be found).
  config.i18n.fallbacks = true

  # Send deprecation notices to registered listeners.
  config.active_support.deprecation = :notify

  # Log to STDOUT because Docker expects all processes to log here. Adjust as needed.
  if ENV["RAILS_LOG_TO_STDOUT"].present?
    logger           = ActiveSupport::Logger.new(STDOUT)
    logger.formatter = config.log_formatter
    config.logger    = ActiveSupport::TaggedLogging.new(logger)
  end

  # Do not dump schema after migrations.
  config.active_record.dump_schema_after_migration = false
end
