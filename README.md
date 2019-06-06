# Mr.Krabs-br
* * *
#### Information
Este é o projeto de teste automatizado para um teste da Bionexo. Projetado usando Ruby como linguagem e Cubumber como framework BDD.

#### Requisito
Ruby version 2.3.3 ou superior

----
#### Instalação

```
git clone https://github.com/espita/test-bionexo
```
Dentro da pasta do projeto
```
gem install bundler
```
```
bundle install
```
#### rubygems

* cucumber
* capybara
* rspec
* rake
* pry
* selenium-webdriver


#### Executando
###env.rb

#####ENV['BROWSER']
É possível testar em diferentes navegadores, o Chrome é o padrão.


Executar todos testes

Example: ``` cucumber```

Executar apenas uma feature

Example: ```cucumber  features/listar_produtos.features  ```

Executar um cenário especifico

Example: ```` cucumber -t @listar_produtos features/listar_produtos.features ````

----
