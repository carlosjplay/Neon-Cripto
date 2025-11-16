source "https://rubygems.org"

git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.4.1"

# Framework principal
gem "rails", "~> 7.0.10"

# Banco de dados SQLite (versão estável no Termux)
gem "sqlite3", "~> 1.6"

# Nokogiri fixado em versão que compila bem
gem "nokogiri", "1.18.10"

# Servidor web
gem "puma", "~> 5.0"

# Front-end
gem "sass-rails", ">= 6"
gem "webpacker", "~> 5.0"
gem "turbolinks", "~> 5"
gem "jbuilder", "~> 2.7"

# Testes
group :development, :test do
  gem "byebug", platforms: [:mri, :mingw, :x64_mingw]
end

# Desenvolvimento
group :development do
  gem "web-console", ">= 4.1.0"
  gem "listen", "~> 3.3"
  gem "spring"
  gem "spring-watcher-listen", "~> 2.0.0"
end

# Produção (opcional, se quiser usar PostgreSQL em deploy)
group :production do
  gem "pg", "~> 1.5"
end
