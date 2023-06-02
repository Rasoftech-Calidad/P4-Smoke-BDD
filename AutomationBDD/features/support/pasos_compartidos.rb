#Amplia al maximo el navegador de Chrome
#Ingresa a la pagina principal de "MercuryTours"
Given(/^acceder a la pagina de "MercuryTours"$/) do
  page.driver.browser.manage.window.maximize
  visit('/')
end
  
#Dirigirse a cierto enlace en el menu de la pagina principal de "MercuryTours"
And(/^acceder al enlace "([^"]*)" del menu de opciones$/) do |linkText|
  click_link(linkText)
end

#Dirigirse a cierto enlace en la barra de navegacion de la pagina principal "MercuryTours"
And(/^acceder al enlace "([^"]*)" de la barra de navegacion$/) do |linkText|
  click_link(linkText)
end
  
#Volver a la pagina principal de "MercuryTours"
And(/^presionar la imagen de boton "BACK TO HOME"$/) do
  xpath = 'body > div:nth-child(5) > table > tbody > tr > td:nth-child(2) > table > tbody > tr:nth-child(4) > td > table > tbody > tr:nth-child(1) > td:nth-child(2) > table > tbody > tr:nth-child(4) > td > a > img'
  find(:xpath, xpath).click
end

#se muestra la imagen "UNDER CONSTRUCTION"
Then(/^se muestra la imagen "UNDER CONSTRUCTION"$/) do
  expect(page).to have_xpath('//img[@src="images/mast_construction.gif"]')
end

#se muestra el mensaje "This section of our web site is currently under construction.   Sorry for any inconvienece."
And('se muestra el mensaje "This section of our web site is currently under construction.   Sorry for any inconvienece."') do
  expect(page).to have_content('This section of our web site is currently under construction.   Sorry for any inconvienece.')
end