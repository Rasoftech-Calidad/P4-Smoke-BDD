# TODOS LOS FEATURES
Given(/^acceder a la pagina de "MercuryTours"$/) do
  page.driver.browser.manage.window.maximize
  visit('/')
  visit('/')
end
  
# carros_renta, cruceros, destinos, hoteles, vacaciones, itinerarios, perfil, vuelos
When(/^acceder al enlace "([^"]*)" del menu de opciones$/) do |linkText|
  click_link(linkText)
end

# contacto, itinerarios, perfil, soporte, registrarse, sign-on, vacaciones
When(/^acceder al enlace "([^"]*)" de la barra de navegacion$/) do |linkText|
  click_link(linkText)
end

# carros_renta, contacto, cruceros, destinos, hoteles, vacaciones, itinerarios, perfil, soporte, vuelos, registrarse, sign-on
Then(/^se muestra el mensaje "([^"]*)" en el sitio web$/) do |message|
  expect(page).to have_content(message)
end
  
# carros_renta, contacto, cruceros, destinos, hoteles, vacaciones, soporte
And(/^se muestra la imagen "UNDER CONSTRUCTION"$/) do
  expect(page).to have_xpath('//img[@src="images/mast_construction.gif"]')
end

# carros_renta, contacto, cruceros, destinos, hoteles, vacaciones, soporte
And(/^presionar la imagen de boton "BACK TO HOME" para volver$/) do
  xpath = '/html/body/div[2]/table/tbody/tr/td[2]/table/tbody/tr[4]/td/table/tbody/tr[1]/td[2]/table/tbody/tr[4]/td/a/img'
  find(:xpath, xpath).click
end

# itinerarios, perfil, vuelos
And(/^presionar la imagen de boton "BACK TO HOME" para volver desde la barra de navegacion$/) do
  xpath = '/html/body/div[2]/table/tbody/tr/td[2]/table/tbody/tr[4]/td/table/tbody/tr[1]/td[2]/table/tbody/tr[2]/td/a/img'   
  find(:xpath, xpath).click
end

# itinerarios, perfil, vuelos
Then(/^presionar la imagen de boton "Continue->" para continuar$/) do
  xpath = '/html/body/div[2]/table/tbody/tr/td[2]/table/tbody/tr[4]/td/table/tbody/tr/td[2]/table/tbody/tr[5]/td/form/table/tbody/tr[14]/td/input'
  find(:xpath, xpath).click
end

# Iniciar sesion exitosamente desde pagina de inicio de sesion
# Acceder a la pagina de vacaciones como un usuario ya registrado
And('ingreso un {string} y {string} correctos') do |string, string2|
  username_input = 'body > div:nth-child(5) > table > tbody > tr > td:nth-child(2) > table > tbody > tr:nth-child(4) > td > table > tbody > tr > td:nth-child(2) > table > tbody > tr:nth-child(5) > td > form > table > tbody > tr:nth-child(1) > td:nth-child(2) > input'
  password_input = 'body > div:nth-child(5) > table > tbody > tr > td:nth-child(2) > table > tbody > tr:nth-child(4) > td > table > tbody > tr > td:nth-child(2) > table > tbody > tr:nth-child(5) > td > form > table > tbody > tr:nth-child(2) > td:nth-child(2) > input[type=password]'
  find(:css, username_input).fill_in with: string
  find(:css, password_input).fill_in with: string2
end

# TODOS LOS ESCENARIOS DE inicio_de_sesion_credenciales
# Acceder a la pagina de vacaciones como un usuario ya registrado
And('presiono el boton {string}') do |string|
  click_button(string)
end