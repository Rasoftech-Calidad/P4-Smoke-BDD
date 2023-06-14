# carros_renta, contacto, cruceros, destinos, hoteles, vacaciones, itinerarios, perfil, soporte, vuelos, registrarse, sign-on
Then(/^se muestra el mensaje "([^"]*)" en el sitio web$/) do |message|
  expect(page).to have_content(message)
end

# Iniciar sesion exitosamente desde pagina de inicio de sesion
# Acceder a la pagina de vacaciones como un usuario ya registrado
And('ingreso un {string} y {string} correctos') do |string, string2|
    username_input = 'body > div:nth-child(5) > table > tbody > tr > td:nth-child(2) > table > tbody > tr:nth-child(4) > td > table > tbody > tr > td:nth-child(2) > table > tbody > tr:nth-child(5) > td > form > table > tbody > tr:nth-child(1) > td:nth-child(2) > input'
    password_input = 'body > div:nth-child(5) > table > tbody > tr > td:nth-child(2) > table > tbody > tr:nth-child(4) > td > table > tbody > tr > td:nth-child(2) > table > tbody > tr:nth-child(5) > td > form > table > tbody > tr:nth-child(2) > td:nth-child(2) > input[type=password]'
    find(:css, username_input).fill_in with: string
    find(:css, password_input).fill_in with: string2
end