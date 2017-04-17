Dado(/^que eu esteja na tela de cadastro de empregado$/) do
  visit "http://opensource.demo.orangehrmlive.com/index.php/auth/login"
  find(:id,'txtUsername').set "admin"
  find(:id,'txtPassword').set "admin"
  find(:id,'btnLogin').click
  find(:id,'menu_pim_viewPimModule').click
  find(:id,'menu_pim_addEmployee').click
end

Dado(/^efetuo o cadastro com dados válidos$/) do
  find(:id, 'firstName').set "Josefinamaria"
  find(:id, 'middleName').set "Cassia"
  find(:id, 'lastName').set "Silva"
  find(:id,'btnSave').click
end

Então(/^o cadastro efetuado com sucesso$/) do
  assert_text("Personal Details")
end
