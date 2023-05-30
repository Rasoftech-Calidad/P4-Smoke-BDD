Feature: Inicio De Sesion Con Credenciales
    As un Usuario Comun
    I quiero iniciar sesion con mis credenciales
    so yo pueda Encontrar mejores ofertas y beneficios por estar registrado

Scenario: Iniciar sesion con credenciales correctos desde pagina de inicio de sesion
    Given yo accedo a la pagina de MercuryTours
    When accedo al enlace de iniciar sesion
    And ingreso un usuario y contraseña correctos
    And presiono el boton "Submit"
    Then deberia ver el mensaje "Login Succesfully"
    And ver el boton de cerrar sesion

Scenario: Iniciar sesion con credenciales correctos desde la pagina de inicio
    Given yo accedo a la pagina de MercuryTours
    When estoy en la pagina de inicio
    And ingreso un usuario y contraseña correctos
    And presiono el boton "Submit"
    Then deberia ver el mensaje "Login Succesfully"
    And ver el boton de cerrar sesion



