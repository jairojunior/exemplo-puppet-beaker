[![Build Status](https://travis-ci.org/jairojunior/exemplo-puppet-beaker.svg?branch=master)](https://travis-ci.org/jairojunior/exemplo-puppet-beaker)

# Projeto de exemplo para o artigo "Teste de Infraestrutura com Puppet: Parte II"

Este projeto tem como objetivo iniciar com testes utilizando beaker e serverspec com o mínimo de configuração possível.

Dependências:

- Ruby 2.3
- Vagrant
- VirtualBox

>**NOTA:** Caso não possua RVM, rbenv, asdf ou qualquer ferramenta análoga. Recomendo que escolha uma destas e instale antes de iniciar.

```sh
gem install bundler --no-ri --no-rdoc
bundle install
```

Executar: `PUPPET_INSTALL_TYPE=agent rspec spec/acceptance/example_spec.rb`

# Autor

Jairo Junior (junior.jairo1@gmail.com)
