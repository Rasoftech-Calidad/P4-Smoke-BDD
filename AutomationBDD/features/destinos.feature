Feature: Acceder a destinos en "MercuryTours"
    As un usuario Comun
    I quiero acceder a la pagina de destinos en el sitio web
    so conocer mis llegadas y salidas de destinos

Background:
    Given acceder a la pagina de "MercuryTours"
    When acceder al enlace "Destinations" del menu de opciones

Scenario: Confirmar los destinos en el sitio web
    Then se muestra el mensaje "Welcome, your destination has been confirmed!" en el sitio web

Scenario: Regresar a la pagina de "MercuryTours" cuando falla la pagina de destinos
    Then se muestra el mensaje "This section of our web site is currently under construction.   Sorry for any inconvienece." en el sitio web
      And se muestra la imagen "UNDER CONSTRUCTION"
      And presionar la imagen de boton "BACK TO HOME" para volver

@iniciar_sesion_usuario
Scenario: Acceder a la pagina de destinos como un usuario ya registrado
    Then se muestra el mensaje "Welcome to Destinations" en el sitio web