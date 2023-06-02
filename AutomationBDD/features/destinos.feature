Feature: Acceder a destinos en "MercuryTours"
    As un usuario Comun
    I quiero acceder a la pagina de destinos en el sitio web
    so conocer mis llegadas y salidas de destinos

Background:
    Given acceder a la pagina de "MercuryTours"
      And acceder al enlace "Destinations" del menu de opciones

Scenario: Acceder a la pagina de destinos
    Then se muestra la imagen "UNDER CONSTRUCTION"
      And se muestra el mensaje "This section of our web site is currently under construction.   Sorry for any inconvienece."

@iniciar_sesion_usuario
Scenario: Acceder a la pagina de destinos como un usuario ya registrado
  Then se muestra la imagen "UNDER CONSTRUCTION"
    And se muestra el mensaje "This section of our web site is currently under construction.   Sorry for any inconvienece."