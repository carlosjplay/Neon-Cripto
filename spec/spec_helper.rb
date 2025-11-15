# Este arquivo é carregado automaticamente pelo RSpec para testes Rails.
# Ele configura o ambiente de teste e inclui helpers importantes.

require 'spec_helper'
ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../config/environment', __dir__)

# Impede que os testes rodem em produção
abort("The Rails environment is running in production mode!") if Rails.env.production?

require 'rspec/rails'

# Carrega arquivos de suporte (spec/support/*.rb)
Dir[Rails.root.join('spec', 'support', '**', '*.rb')].each { |f| require f }

# Configuração do banco de dados de teste
ActiveRecord::Migration.maintain_test_schema!

RSpec.configure do |config|
  # Inclui FactoryBot
  config.include FactoryBot::Syntax::Methods

  # Usa transações para limpar o banco entre testes
  config.use_transactional_fixtures = true

  # Detecta automaticamente o tipo de teste (model, controller, etc.)
  config.infer_spec_type_from_file_location!

  # Filtra linhas de gems nos backtraces
  config.filter_rails_from_backtrace!
end
