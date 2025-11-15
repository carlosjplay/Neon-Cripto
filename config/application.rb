require_relative "boot"
require "rails/all"

Bundler.require(*Rails.groups)

module NeonCripto
  class Application < Rails::Application
    config.load_defaults 7.0

    # Configurações adicionais podem ser colocadas aqui
    config.time_zone = "Brasilia"
    config.i18n.default_locale = :pt
  end
end
