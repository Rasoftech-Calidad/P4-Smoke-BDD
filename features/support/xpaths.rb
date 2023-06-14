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