# frozen_string_literal: true

require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

UMI_DEPLOYMENT_CSS = File.basename(Dir[File.expand_path('../public/umi.*.css', __dir__)].first.to_s)
UMI_DEPLOYMENT_JS = File.basename(Dir[File.expand_path('../public/umi.*.js', __dir__)].first.to_s)

module AntDesignRails
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 7.0

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")
  end
end
