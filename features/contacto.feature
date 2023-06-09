Feature: Acceder a contacto en "MercuryTours"
    As un usuario Comun
    I quiero acceder a la pagina de contacto en el sitio web
    so obtener mas informacion y numeros de referencia

Background:
    Given acceder a la pagina de "MercuryTours"
    When acceder al enlace "CONTACT" de la barra de navegacion

Scenario: Visualizar numeros de operadores en contacto en el sitio web
    Then se muestra el mensaje "Hello, contact of the operator who could help you: 12345678" en el sitio web

Scenario: Regresar a la pagina de "MercuryTours" cuando falla la pagina de contacto
    Then se muestra el mensaje "This section of our web site is currently under construction.   Sorry for any inconvienece." en el sitio web
      And se muestra la imagen "UNDER CONSTRUCTION"
      And presionar la imagen de boton "BACK TO HOME" para volver

@iniciar_sesion_usuario
Scenario: Acceder a la pagina de contacto como un usuario ya registrado
    Then se muestra el mensaje "Welcome to CONTACT" en el sitio web