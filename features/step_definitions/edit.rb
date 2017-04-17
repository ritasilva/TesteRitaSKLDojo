Dado(/^que eu acesse a tela de cadastro de empregado$/) do
  visit "http://opensource.demo.orangehrmlive.com/index.php/auth/login"
  find(:id,'txtUsername').set "admin"
  find(:id,'txtPassword').set "admin"
  find(:id,'btnLogin').click
  find(:id,'menu_pim_viewPimModule').click
  find(:id,'menu_pim_viewEmployeeList').click
  find(:id,'empsearch_employee_name_empName').set "Josefinamaria"
  find(:id,'searchBtn').click
  click_link('Josefinamaria')
  find(:id,'btnSave').click
end

Dado(/^altero os dados do cadastro do empregado$/) do
  find(:id,'personal_optGender_2').click
  find(:id,'personal_txtOtherID').set "082"  
  find(:id,'btnSave').click
end

Então(/^a alteração é realizada com sucesso$/) do
  assert_text("Successfully Saved")
end
