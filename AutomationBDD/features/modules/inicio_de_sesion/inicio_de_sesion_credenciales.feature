Feature: Inicio De Sesion Con Credenciales
    As un Usuario Comun
    I quiero iniciar sesion con mis credenciales
    so yo pueda Encontrar mejores ofertas y beneficios por estar registrado

Background:
    Given yo accedo a la pagina de MercuryTours

Scenario: Iniciar sesion con credenciales correctos desde pagina de inicio de sesion
    When accedo al enlace de iniciar sesion
    And ingreso un usuario y contraseña correctos
    And presiono el boton "Submit"
    Then deberia ver el mensaje "Login Succesfully"
    And ver el boton de cerrar sesion

Scenario: Iniciar sesion con credenciales incorrectos desde pagina de inicio de sesion
    When accedo al enlace de iniciar sesion
    And ingreso un usuario y contraseña incorrectos
    And presiono el boton "Submit"
    Then deberia ver el mensaje "Enter your userName and password correct"
        

Scenario: Iniciar sesion con credenciales correctos desde la pagina principal
    When estoy en la pagina principal
    And ingreso un usuario y contraseña correctos
    And presiono el boton "Submit"
    Then deberia ver el mensaje "Login Succesfully"
    And ver el boton de cerrar sesion

Scenario: Iniciar sesion con credenciales incorrectos desde la pagina principal
    When estoy en la pagina principal
    And ingreso un usuario y contraseña incorrectos
    And presiono el boton "Submit"
    Then deberia ver el mensaje "Enter your userName and password correct"



