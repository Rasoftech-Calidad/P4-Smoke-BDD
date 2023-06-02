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
Given(/^presionar la imagen de boton "BACK TO HOME"$/) do
  xpath = '/html/body/div[2]/table/tbody/tr/td[2]/table/tbody/tr[4]/td/table/tbody/tr[1]/td[2]/table/tbody/tr[2]/td/a/img'
  find(:xpath, xpath).click
end