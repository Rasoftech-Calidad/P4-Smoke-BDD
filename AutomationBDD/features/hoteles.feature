Feature: Acceder a hoteles en "MercuryTours"
    As un usuario Comun
    I quiero acceder a la pagina de hoteles en el sitio web
    so reservar una habitacion

Background:
    Given acceder a la pagina de "MercuryTours"
      And acceder al enlace "Hotels" del menu de opciones

Scenario: Acceder a la pagina de hoteles
    Then se muestra la imagen "UNDER CONSTRUCTION"
      And se muestra el mensaje "This section of our web site is currently under construction.   Sorry for any inconvienece."

Scenario: Regresar a la pagina de "MercuryTours" cuando falla la pagina de hoteles
    Then se muestra la imagen "UNDER CONSTRUCTION"
      And se muestra el mensaje "This section of our web site is currently under construction.   Sorry for any inconvienece."
      And presionar la imagen de boton "BACK TO HOME"

Scenario: Reservar un hotel en el sitio web
    Then se muestra el mensaje "Welcome, your hotel was ticked at this time!"
      And presionar la imagen de boton "BACK TO HOME"

@iniciar_sesion_usuario
Scenario: Acceder a la pagina de hoteles como un usuario ya registrado
  Then se muestra la imagen "UNDER CONSTRUCTION"
    And se muestra el mensaje "This section of our web site is currently under construction.   Sorry for any inconvienece."