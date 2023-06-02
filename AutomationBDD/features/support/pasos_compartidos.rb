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
  xpath = '/html/body/div[2]/table/tbody/tr/td[2]/table/tbody/tr[4]/td/table/tbody/tr[1]/td[2]/table/tbody/tr[2]/td/a/img'
  find(:xpath, xpath).click
end

#se muestra la imagen "UNDER CONSTRUCTION"
Then(/^se muestra la imagen "UNDER CONSTRUCTION"$/) do
  expect(page).to have_xpath('//img[@src="images/mast_construction.gif"]')
end

#se muestra la imagen "FLIGHT FINDER"
Then(/^se muestra la imagen "FLIGHT FINDER"$/) do
  expect(page).to have_xpath('//img[@src="images/mast_flightfinder.gif"]')
end

#se muestra el mensaje "This section of our web site is currently under construction.   Sorry for any inconvienece."
And('se muestra el mensaje "This section of our web site is currently under construction.   Sorry for any inconvienece."') do
  expect(page).to have_content('This section of our web site is currently under construction.   Sorry for any inconvienece.')
end

#se muestra el mensaje "Use our Flight Finder to search for the lowest fare on participating airlines. Once you've booked your flight, don't forget to visit the Mercury Tours Hotel Finder to reserve lodging in your destination city."
And('se muestra el mensaje "Use our Flight Finder to search for the lowest fare on participating airlines. Once you've booked your flight, don't forget to visit the Mercury Tours Hotel Finder to reserve lodging in your destination city."') do
  expect(page).to have_content('Use our Flight Finder to search for the lowest fare on participating airlines. Once you've booked your flight, don't forget to visit the Mercury Tours Hotel Finder to reserve lodging in your destination city.')
end