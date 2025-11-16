# Neon-Cripto
Plataforma de análise de criptomoeda com gráficos e alertas
## Instalação no Termux
- Instale pacotes: `pkg install git ruby clang make pkg-config sqlite libsqlite libxml2 libxslt zlib`
- Exporte variáveis: `export PKG_CONFIG_PATH=$PREFIX/lib/pkgconfig`
- Use `sqlite3` versão 1.6.9
pkg update && pkg upgrade
pkg install git ruby clang make pkg-config sqlite libsqlite libxml2 libxslt zlib
export PKG_CONFIG_PATH=$PREFIX/lib/pkgconfig
export NOKOGIRI_USE_SYSTEM_LIBRARIES=1
gem install nokogiri -v 1.18.10 -- --use-system-libraries \
  --with-xml2-include=$PREFIX/include \
  --with-xslt-include=$PREFIX/include \
  --with-zlib-include=$PREFIX/include
  gem install sqlite3 -v 1.6.9 -- --with-sqlite3-include=$PREFIX/include --with-sqlite3-lib=$PREFIX/lib
