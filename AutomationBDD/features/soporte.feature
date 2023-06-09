Feature: Acceder a soporte en "MercuryTours"
    As un usuario Comun
    I quiero acceder a la pagina de soporte en el sitio web
    so consultar o realizar algun reclamo

Background:
    Given acceder a la pagina de "MercuryTours"
      And acceder al enlace "SUPPORT" de la barra de navegacion

Scenario: Regresar a la pagina de "MercuryTours" cuando falla la pagina de soporte
    Then se muestra la imagen "UNDER CONSTRUCTION"
      And se muestra el mensaje "This section of our web site is currently under construction.   Sorry for any inconvienece."
      And presionar la imagen de boton "BACK TO HOME"

Scenario: Realizar un reclamo al soporte en el sitio web
    Then se muestra el mensaje "Hello, thank you for submitting your corresponding claim. We will be attentive to the request!"
      And presionar la imagen de boton "BACK TO HOME"

@iniciar_sesion_usuario
Scenario: Acceder a la pagina de soporte como un usuario ya registrado
  Then se muestra la imagen "UNDER CONSTRUCTION"
    And se muestra el mensaje "This section of our web site is currently under construction.   Sorry for any inconvienece."