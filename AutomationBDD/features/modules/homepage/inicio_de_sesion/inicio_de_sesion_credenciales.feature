Feature: Inicio De Sesion Con Credenciales
    As un Usuario Comun
    I quiero iniciar sesion con mis credenciales
    so yo pueda Encontrar mejores ofertas y beneficios por estar registrado

Scenario: Iniciar sesion con credenciales correctos
    Given yo accedo a la pagina de MercuryTours
    When accedo al enlace de iniciar sesion
    And ingreso un usuario y contraseña correctos
    Then deberia ver el mensaje "Login Succesfully"
    And el boton de cerrar sesion "sign-off"