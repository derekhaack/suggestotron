crequire_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Suggestotron
  class Application < Rails::Application
   
  config.i18n.available.locales = [:en, :es, :de]
  
 config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{de,yml}').to_s]
config.i18n.default_locale = :de
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
  end
end
