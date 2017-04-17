Dado(/^que eu esteja na tela de cadastro de empregado$/) do
  visit "http://opensource.demo.orangehrmlive.com/index.php/auth/login"
  find(:id,'txtUsername').set "admin"
  find(:id,'txtPassword').set "admin"
  find(:id,'btnLogin').click
  visit "http://opensource.demo.orangehrmlive.com/index.php/pim/addEmployee"
end

Dado(/^efetuo o cadastro com dados válidos$/) do
  find(:id, 'firstName').set "Josefinamaria"
  find(:id, 'middleName').set "Cassia"
  find(:id, 'lastName').set "Silva"
  find(:id,'btnSave').click
end

Então(/^o cadastro efetuado com sucesso$/) do
  pending # Write code here that turns the phrase above into concrete actions
end
