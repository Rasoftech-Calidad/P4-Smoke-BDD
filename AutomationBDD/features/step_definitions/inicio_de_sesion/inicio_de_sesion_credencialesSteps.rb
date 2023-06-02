# Given yo accedo a la pagina de MercuryTours
Given('yo accedo a la pagina de MercuryTours') do
    visit 'http://demo.guru99.com/test/newtours/'
end

When('ingreso un hola y hola correctos') do
    pending # Write code here that turns the phrase above into concrete actions
end

When('presiono el boton {string}') do |string|
    pending # Write code here that turns the phrase above into concrete actions
end

Then('deberia ver el mensaje {string}') do |string|
    pending # Write code here that turns the phrase above into concrete actions
end

Then('ver el boton de cerrar sesion') do
    pending # Write code here that turns the phrase above into concrete actions
end

# When accedo al enlace de "SIGN-ON" para iniciar sesion
#When(/^accedo al enlace de "([^"]*)" para iniciar sesion$/) do |signon|
 #   css = 'body > div:nth-child(5) > table > tbody > tr > td:nth-child(2) > table > tbody > tr:nth-child(2) > td > table > tbody > tr > td:nth-child(1) > a'
  #  find(:css, css).click
   # click_link(signon)
#end

#When('ingreso un {string} y {string} correctos') do |usuario, contraseña|
 #   pending
#end
#puts TEEEEEEESSSSTTTTT
 #   puts usuario
  #  puts contraseña
   # fill_in 'User Name', :with => usuario
    #fill_in 'Password', :with => contraseña