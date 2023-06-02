# Given yo accedo a la pagina de MercuryTours
Given('yo accedo a la pagina de MercuryTours') do
    visit 'http://demo.guru99.com/test/newtours/'
end

# And ingreso un "<usuario>" y "<contraseña>" correctos
When('ingreso un {string} y {string} correctos') do |string, string2|
    username_input = 'body > div:nth-child(5) > table > tbody > tr > td:nth-child(2) > table > tbody > tr:nth-child(4) > td > table > tbody > tr > td:nth-child(2) > table > tbody > tr:nth-child(5) > td > form > table > tbody > tr:nth-child(1) > td:nth-child(2) > input'
    password_input = 'body > div:nth-child(5) > table > tbody > tr > td:nth-child(2) > table > tbody > tr:nth-child(4) > td > table > tbody > tr > td:nth-child(2) > table > tbody > tr:nth-child(5) > td > form > table > tbody > tr:nth-child(2) > td:nth-child(2) > input[type=password]'
    find(:css, username_input).fill_in with: string
    find(:css, password_input).fill_in with: string2
end

# And ingreso un "<usuario>" y "<contraseña>" incorrectos
When('ingreso un {string} y {string} incorrectos') do |string, string2|
    username_input = 'body > div:nth-child(5) > table > tbody > tr > td:nth-child(2) > table > tbody > tr:nth-child(4) > td > table > tbody > tr > td:nth-child(2) > table > tbody > tr:nth-child(5) > td > form > table > tbody > tr:nth-child(1) > td:nth-child(2) > input'
    password_input = 'body > div:nth-child(5) > table > tbody > tr > td:nth-child(2) > table > tbody > tr:nth-child(4) > td > table > tbody > tr > td:nth-child(2) > table > tbody > tr:nth-child(5) > td > form > table > tbody > tr:nth-child(2) > td:nth-child(2) > input[type=password]'
    find(:css, username_input).fill_in with: string
    find(:css, password_input).fill_in with: string2
end

# And presiono el boton "Submit"
When('presiono el boton {string}') do |string|
    click_button(string)
end

# Then deberia ver el mensaje "Login Succesfully"
Then('deberia ver el mensaje {string}') do |string|
    puts 'TEEESSTTTT'
    puts string
    expect(page).to have_content(string)
end

# And ver el boton de cerrar sesion
Then('ver el boton de cerrar sesion') do
    expect(page).to have_content('SIGN-OFF')
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