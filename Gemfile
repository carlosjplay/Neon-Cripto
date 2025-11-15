source 'https://rubygems.org'

git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.2.2' # ajuste para a versão que você está usando

# Gems principais do Rails
gem 'rails', '~> 7.0.0'
gem 'pg', '~> 1.5'          # PostgreSQL
gem 'puma', '~> 5.0'        # servidor web
gem 'sass-rails', '>= 6'    # CSS
gem 'webpacker', '~> 5.0'   # JS
gem 'turbolinks', '~> 5'    # navegação rápida
gem 'jbuilder', '~> 2.7'    # JSON builder

# Desenvolvimento e testes
group :development, :test do
  gem 'rspec-rails'         # testes com RSpec
  gem 'factory_bot_rails'   # factories para testes
  gem 'faker'               # dados falsos para testes
end

# Desenvolvimento apenas
group :development do
  gem 'listen', '~> 3.3'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Produção
group :production do
  gem 'pg'
end
