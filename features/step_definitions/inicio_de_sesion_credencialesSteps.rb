# When quiero iniciar sesion desde los campos de entrada en la pagina principal de MercuryTours
When('quiero iniciar sesion desde los campos de entrada en la pagina principal de MercuryTours') do
    home_menuprincipal = '/html/body/div[2]/table/tbody/tr/td[1]/table/tbody/tr/td/table/tbody/tr/td/table/tbody/tr[1]/td[2]/font/a'
    find(:xpath, home_menuprincipal).click
end

# And ingreso un "<usuario>" y "<contraseña>" correctos
@pepe
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

# And ingreso un "<usuario>" y "<contraseña>" correctos en la pagina principal
When('ingreso un {string} y {string} correctos en la pagina principal') do |string, string2|
    username_input = 'body > div:nth-child(5) > table > tbody > tr > td:nth-child(2) > table > tbody > tr:nth-child(4) > td > table > tbody > tr > td:nth-child(2) > table > tbody > tr:nth-child(2) > td:nth-child(3) > form > table > tbody > tr:nth-child(4) > td > table > tbody > tr:nth-child(2) > td:nth-child(2) > input[type=text]'
    password_input = 'body > div:nth-child(5) > table > tbody > tr > td:nth-child(2) > table > tbody > tr:nth-child(4) > td > table > tbody > tr > td:nth-child(2) > table > tbody > tr:nth-child(2) > td:nth-child(3) > form > table > tbody > tr:nth-child(4) > td > table > tbody > tr:nth-child(3) > td:nth-child(2) > input[type=password]'
    find(:css, username_input).click
    find(:css, username_input).fill_in with: string
    find(:css, password_input).fill_in with: string2
end

# And ingreso un "<usuario>" y "<contraseña>" incorrectos en la pagina principal
When('ingreso un {string} y {string} incorrectos en la pagina principal') do |string, string2|
    username_input = '/html/body/div[2]/table/tbody/tr/td[2]/table/tbody/tr[4]/td/table/tbody/tr/td[2]/table/tbody/tr[2]/td[3]/form/table/tbody/tr[4]/td/table/tbody/tr[2]/td[2]/input'
    password_input = '/html/body/div[2]/table/tbody/tr/td[2]/table/tbody/tr[4]/td/table/tbody/tr/td[2]/table/tbody/tr[2]/td[3]/form/table/tbody/tr[4]/td/table/tbody/tr[3]/td[2]/input'
    find(:xpath, username_input).click
    find(:xpath, username_input).fill_in with: string
    find(:xpath, password_input).fill_in with: string2
end

# And presiono el boton "Submit"
When('presiono el boton {string}') do |string|
    click_button(string)
end

# Then deberia ver el mensaje "Login Succesfully"
Then('deberia ver el mensaje {string}') do |string|
    expect(page).to have_content(string)
end

# And ver el boton de cerrar sesion
Then('ver el boton de cerrar sesion') do
    expect(page).to have_content('SIGN-OFF')
end