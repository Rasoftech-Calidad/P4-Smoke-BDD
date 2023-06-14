# carros_renta, cruceros, destinos, hoteles, vacaciones, itinerarios, perfil, vuelos
When(/^acceder al enlace "([^"]*)" del menu de opciones$/) do |linkText|
  click_link(linkText)
end

# contacto, itinerarios, perfil, soporte, registrarse, sign-on, vacaciones
When(/^acceder al enlace "([^"]*)" de la barra de navegacion$/) do |linkText|
  click_link(linkText)
end

# TODOS LOS ESCENARIOS DE inicio_de_sesion_credenciales
# Acceder a la pagina de vacaciones como un usuario ya registrado
And('presiono el boton {string}') do |string|
    click_button(string)
end