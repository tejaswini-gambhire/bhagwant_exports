require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module BhagwantExports
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.1

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
    # Enable the asset pipeline
    config.assets.enabled = true
    # Version of your assets, change this if you want to expire all your assets
    config.assets.version = '1.0'

    config.before_configuration do
      env_file = File.join(Rails.root, 'config', 'credentials.yml')
      YAML.load(File.open(env_file)).each do |key, value|
        ENV[key.to_s] = value
      end if File.exists?(env_file)
    end

    config.assets.paths += ["#{config.root}/vendor/assets/fonts", "#{config.root}/app/assets/images/**", "#{config.root}/vendor/assets/images/**", "#{config.root}/vendor/assets/javascripts/**", "#{config.root}/vendor/assets/stylesheets/**"]
    config.assets.precompile += %w(*.png *.jpg *.jpeg *.gif *.eot *.svg *.ttf *.otf *.woff)
  end
end
