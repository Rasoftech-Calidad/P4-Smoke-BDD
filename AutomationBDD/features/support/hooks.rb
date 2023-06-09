After do 
  Capybara.current_session.driver.quit
end

# carros_renta, contacto, cruceros, destinos
Before '@iniciar_sesion_usuario' do
  page.driver.browser.manage.window.maximize
  visit('/')
  click_link('SIGN-ON')
  fill_in 'userName', with: ENV['USER']
  fill_in 'password', with: ENV['PSW']
  click_button('Submit')
end