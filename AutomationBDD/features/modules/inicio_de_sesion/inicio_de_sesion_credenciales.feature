Feature: Inicio De Sesion Con Credenciales
    As un Usuario Comun
    I quiero iniciar sesion con mis credenciales
    so yo pueda Encontrar mejores ofertas y beneficios por estar registrado

Background:
    Given acceder a la pagina de "MercuryTours"

@smoketest
Scenario Outline: Iniciar sesion exitosamente desde pagina de inicio de sesion
    When acceder al enlace "SIGN-ON" de la barra de navegacion
    And ingreso un "<usuario>" y "<contraseña>" correctos
    And presiono el boton "Submit"
    Then deberia ver el mensaje "Login Successfully"
    And ver el boton de cerrar sesion
Examples:
    | usuario | contraseña |
    | hola | hola    |

Scenario Outline: Iniciar sesion con credenciales incorrectos desde pagina de inicio de sesion
    When acceder al enlace "SIGN-ON" de la barra de navegacion
    And ingreso un "<usuario>" y "<contraseña>" incorrectos
    And presiono el boton "Submit"
    Then deberia ver el mensaje "Enter your userName and password correct"
Examples:
    | usuario | contraseña |
    | hola | hola    |

Scenario Outline: Iniciar sesion con credenciales correctos desde la pagina principal
    When quiero iniciar sesion desde los campos de entrada en la pagina principal de MercuryTours
    And ingreso un "<usuario>" y "<contraseña>" correctos
    And presiono el boton "Submit"
    Then deberia ver el mensaje "Login Succesfully"
    And ver el boton de cerrar sesion
Examples:
    | usuario | contraseña |
    | hola | hola    |

Scenario Outline: Iniciar sesion con credenciales incorrectos desde la pagina principal
    When estoy en la pagina principal
    And ingreso un "<usuario>" y "<contraseña>" incorrectos
    And presiono el boton "Submit"
    Then deberia ver el mensaje "Enter your userName and password correct"
Examples:
    | usuario | contraseña |
    | hola | hola    |



# Agregar escenario exlusivo para probar que el signoff se encuentre en cada vista