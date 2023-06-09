# TODOS LOS FEATURES
Given(/^acceder a la pagina de "MercuryTours"$/) do
  page.driver.browser.manage.window.maximize
  visit('/')
end
  
# carros_renta, cruceros, destinos
When(/^acceder al enlace "([^"]*)" del menu de opciones$/) do |linkText|
  click_link(linkText)
end

# contacto
When(/^acceder al enlace "([^"]*)" de la barra de navegacion$/) do |linkText|
  click_link(linkText)
end

# carros_renta, contacto, cruceros, destinos
Then(/^se muestra el mensaje "([^"]*)" en el sitio web$/) do |message|
  expect(page).to have_content(message)
end
  
# carros_renta, contacto, cruceros, destinos
And(/^se muestra la imagen "UNDER CONSTRUCTION"$/) do
  expect(page).to have_xpath('//img[@src="images/mast_construction.gif"]')
end

# carros_renta, contacto, cruceros, destinos
And(/^presionar la imagen de boton "BACK TO HOME" para volver$/) do
  xpath = '/html/body/div[2]/table/tbody/tr/td[2]/table/tbody/tr[4]/td/table/tbody/tr[1]/td[2]/table/tbody/tr[4]/td/a/img'
  find(:xpath, xpath).click
end

# 
Then(/^se muestra la imagen "FLIGHT FINDER"$/) do
  expect(page).to have_xpath('//img[@src="images/mast_flightfinder.gif"]')
end