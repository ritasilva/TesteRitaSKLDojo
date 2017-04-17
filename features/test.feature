# language: pt
# encode: UFT-8

@cadastro
Funcionalidade: Cadastro de empregado
  Eu como admin
  Desejo cadastrar um empregado

    Cenário: Cadastrar empregado
      Dado que eu esteja na tela de cadastro de empregado
      E efetuo o cadastro com dados válidos
      Então o cadastro efetuado com sucesso
