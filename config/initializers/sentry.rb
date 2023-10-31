##
# This file was auto-generated by `fly launch`. Prefer NOT to modify it without a strong reason.
# - https://fly.io/docs/rails/getting-started
##

if ENV["SENTRY_DSN"]

Sentry.init do |config|
  config.dsn = ENV["SENTRY_DSN"]
  config.breadcrumbs_logger = [:active_support_logger, :http_logger]

  # Set traces_sample_rate to 1.0 to capture 100%
  # of transactions for performance monitoring.
  # We recommend adjusting this value in production.
  config.traces_sample_rate = 1.0
  # or
  config.traces_sampler = lambda do |context|
    true
  end
end

end
