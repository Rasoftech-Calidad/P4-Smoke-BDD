Feature: Acceder a destinos en "MercuryTours"
    As un usuario Comun
    I quiero acceder a la pagina de destinos en el sitio web
    so conocer mis llegadas y salidas de destinos

Background:
    Given acceder a la pagina de "MercuryTours"
      And acceder al enlace "Destinations" del menu de opciones

Scenario: Regresar a la pagina de "MercuryTours" cuando falla la pagina de destinos
    Then se muestra la imagen "UNDER CONSTRUCTION"
      And se muestra el mensaje "This section of our web site is currently under construction.   Sorry for any inconvienece."
      And presionar la imagen de boton "BACK TO HOME"

Scenario: Confirmar los destinos en el sitio web
    Then se muestra el mensaje "Welcome, your destination has been confirmed!"
      And presionar la imagen de boton "BACK TO HOME"

@iniciar_sesion_usuario
Scenario: Acceder a la pagina de destinos como un usuario ya registrado
  Then se muestra la imagen "UNDER CONSTRUCTION"
    And se muestra el mensaje "This section of our web site is currently under construction.   Sorry for any inconvienece."