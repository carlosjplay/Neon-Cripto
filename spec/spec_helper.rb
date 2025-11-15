# Este arquivo contém configurações gerais do RSpec
# Ele é carregado antes do rails_helper.rb

RSpec.configure do |config|
  # Usa a expectativa moderna do RSpec
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  # Configura mocks
  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  # Executa testes aleatoriamente para evitar dependências ocultas
  config.order = :random
  Kernel.srand config.seed

  # Mostra a saída mais detalhada se rodar um único arquivo
  if config.files_to_run.one?
    config.default_formatter = 'doc'
  end
end
