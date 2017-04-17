# language: pt
# encode: UFT-8

@editar
Funcionalidade: Editar cadastro de empregado
  Eu como admin
  Desejo editar o cadastro de empregado

    Cenário: Editar cadastro de empregado
      Dado que eu acesse a tela de cadastro de empregado
      E altero os dados do cadastro do empregado
      Então a alteração é realizada com sucesso
