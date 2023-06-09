Feature: Acceder a vacaciones en "MercuryTours"
    As un usuario Comun
    I quiero acceder a la pagina de vacaciones en el sitio web
    so planificar y reservar vacaciones

Background:
    Given acceder a la pagina de "MercuryTours"

Scenario: Confirmar las vacaciones en el sitio web
    When acceder al enlace "Vacations" del menu de opciones 
    Then se muestra el mensaje "Welcome, your vacation has already been ticked at this time!" en el sitio web

Scenario: Regresar a la pagina de "MercuryTours" cuando falla la pagina de vacaciones
    When acceder al enlace "Vacations" del menu de opciones
    Then se muestra el mensaje "This section of our web site is currently under construction.   Sorry for any inconvienece." en el sitio web
      And se muestra la imagen "UNDER CONSTRUCTION"
      And presionar la imagen de boton "BACK TO HOME" para volver

Scenario: Acceder a la pagina de vacaciones como un usuario ya registrado
    When acceder al enlace "SIGN-ON" de la barra de navegacion
        And ingreso un "<usuario>" y "<contraseña>" correctos
        And presiono el boton "Submit"
        And acceder al enlace "Vacations" del menu de opciones
    Then se muestra el mensaje "Welcome to Vacations" en el sitio web
    Examples:
    | usuario      | contraseña |
    | hola         | hola       |
    | Rasoftech    | Soporte!23 |