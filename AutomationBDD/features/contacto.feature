Feature: Acceder a contacto en "MercuryTours"
    As un usuario Comun
    I quiero acceder a la pagina de contacto en el sitio web
    so obtener mas informacion y numeros de referencia

Background:
    Given acceder a la pagina de "MercuryTours"
      And acceder al enlace "CONTACT" en la barra de navegacion

Scenario: Regresar a la pagina de "MercuryTours" cuando falla la pagina de contacto
    Then se muestra la imagen "UNDER CONSTRUCTION"
      And se muestra el mensaje "This section of our web site is currently under construction.   Sorry for any inconvienece."
      And presionar la imagen de boton "BACK TO HOME"

Scenario: Visualizar numeros de operadores en contacto en el sitio web
    Then se muestra el mensaje "Hello, contact of the operator who could help you: 12345678"
      And presionar la imagen de boton "BACK TO HOME"

@iniciar_sesion_usuario
Scenario: Acceder a la pagina de contacto como un usuario ya registrado
  Then se muestra la imagen "UNDER CONSTRUCTION"
    And se muestra el mensaje "This section of our web site is currently under construction.   Sorry for any inconvienece."