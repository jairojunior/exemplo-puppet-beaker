# Projeto de exemplo para o artigo "Teste de Infraestrutura com Puppet: Parte II"

Este projeto tem como objetivo iniciar com testes utilizando beaker e serverspev com o mínimo de configuração possível.

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
