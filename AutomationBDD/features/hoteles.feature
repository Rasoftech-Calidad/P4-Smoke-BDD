Feature: Acceder a hoteles en "MercuryTours"
    As un usuario Comun
    I quiero acceder a la pagina de hoteles en el sitio web
    so reservar una habitacion

Background:
    Given acceder a la pagina de "MercuryTours"
    When acceder al enlace "Hotels" del menu de opciones

Scenario: Reservar un hotel en el sitio web
    Then se muestra el mensaje "Welcome, your hotel was ticked at this time!" en el sitio web

Scenario: Regresar a la pagina de "MercuryTours" cuando falla la pagina de hoteles
    Then se muestra el mensaje "This section of our web site is currently under construction.   Sorry for any inconvienece." en el sitio web
      And se muestra la imagen "UNDER CONSTRUCTION"
      And presionar la imagen de boton "BACK TO HOME" para volver

@iniciar_sesion_usuario
Scenario: Acceder a la pagina de hoteles como un usuario ya registrado
    Then se muestra el mensaje "Welcome to Hotels" en el sitio web