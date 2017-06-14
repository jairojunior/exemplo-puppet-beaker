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

Com o uso do rake você pode ter acesso a algumas tarefas do Beaker, como listar nodesets específicos, utilizar um nodeset específico na execução (sem definir `BEAKER_set`) ou acessar os nodes via SSH.

```
$ bundle exec rake -T beaker
rake beaker                            # Run beaker acceptance tests
rake beaker:centos-66-x64              # Run the Beaker acceptance tests for the node set 'centos-66-x64'
rake beaker:debian-78-x64              # Run the Beaker acceptance tests for the node set 'debian-78-x64'
rake beaker:debian-82-x64              # Run the Beaker acceptance tests for the node set 'debian-82-x64'
rake beaker:default                    # Run the Beaker acceptance tests for the node set 'default'
rake beaker:sets                       # List available beaker nodesets
rake beaker:ssh[set,node]              # Try to use vagrant to login to the Beaker node
rake beaker:ssh:centos-66-x64[node]    # Use vagrant to login to a node from the set 'centos-66-x64'
rake beaker:ssh:debian-78-x64[node]    # Use vagrant to login to a node from the set 'debian-78-x64'
rake beaker:ssh:debian-82-x64[node]    # Use vagrant to login to a node from the set 'debian-82-x64'
rake beaker:ssh:default[node]          # Use vagrant to login to a node from the set 'default'
rake beaker:ssh:ubuntu-1404-x64[node]  # Use vagrant to login to a node from the set 'ubuntu-1404-x64'
rake beaker:ssh:ubuntu-1604-x64[node]  # Use vagrant to login to a node from the set 'ubuntu-1604-x64'
rake beaker:ubuntu-1404-x64            # Run the Beaker acceptance tests for the node set 'ubuntu-1404-x64'
rake beaker:ubuntu-1604-x64            # Run the Beaker acceptance tests for the node set 'ubuntu-1604-x64'
```

# Autor

Jairo Junior (junior.jairo1@gmail.com)
