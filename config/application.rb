require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Eventz
  class Application < Rails::Application
    # Configuraciones existentes
    config.autoload_paths << "#{root}/app/views"
    config.autoload_paths << "#{root}/app/views/layouts"
    config.autoload_paths << "#{root}/app/views/components"
    
    config.load_defaults 7.2
    config.autoload_lib(ignore: %w[assets tasks])

    config.phlex = ActiveSupport::OrderedOptions.new
    config.phlex.render_layout_with_rails_helpers = true
  end
end