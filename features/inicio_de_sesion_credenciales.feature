Feature: Inicio De Sesion Con Credenciales
    As un Usuario Comun
    I quiero iniciar sesion con mis credenciales
    so yo pueda Encontrar mejores ofertas y beneficios por estar registrado

Background:
    Given acceder a la pagina de "MercuryTours"

@smoketest
Scenario Outline: Iniciar sesion exitosamente desde el menu "SIGN-ON"
    When acceder al enlace "SIGN-ON" de la barra de navegacion
    And ingreso un "<usuario>" y "<contraseña>" correctos
    And presiono el boton "Submit"
    Then deberia ver el mensaje "Login Successfully"
    And ver el boton de cerrar sesion
Examples:
    | usuario              | contraseña     |
    | Rasoftech            | Soporte!23     |
    | _*/+Rasoftech-!';    | _*/+Soporte-!' |

@smoketest
Scenario Outline: Iniciar sesion con credenciales incorrectos desde el menu "SIGN-ON"
    When acceder al enlace "SIGN-ON" de la barra de navegacion
    And ingreso un "<usuario>" y "<contraseña>" incorrectos
    And presiono el boton "Submit"
    Then se muestra el mensaje "Enter your userName and password correct" en el sitio web
Examples:
    | usuario          | contraseña          |
    | incorrectuserX71 | incorrectpassX71    |

@smoketest
Scenario Outline: Iniciar sesion con credenciales correctos desde el menu "Home"
    When quiero iniciar sesion desde los campos de entrada en la pagina principal de MercuryTours
    And ingreso un "<usuario>" y "<contraseña>" correctos en la pagina principal
    And presiono el boton "Submit"
    Then deberia ver el mensaje "Login Successfully"
    And ver el boton de cerrar sesion
Examples:
    | usuario              | contraseña     |
    | Rasoftech            | Soporte!23     |
    | _*/+Rasoftech-!';    | _*/+Soporte-!' |

@smoketest
Scenario Outline: Iniciar sesion con credenciales incorrectos desde el menu "Home"
    When quiero iniciar sesion desde los campos de entrada en la pagina principal de MercuryTours
    And ingreso un "<usuario>" y "<contraseña>" incorrectos en la pagina principal
    And presiono el boton "Submit"
    Then se muestra el mensaje "Enter your userName and password correct" en el sitio web
Examples:
    | usuario          | contraseña          |
    | incorrectuserX71 | incorrectpassX71    |