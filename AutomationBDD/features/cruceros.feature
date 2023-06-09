Feature: Acceder a cruceros en "MercuryTours"
    As un usuario Comun
    I quiero acceder a la pagina de cruceros en el sitio web
    so reservar un viaje increible

Background:
    Given acceder a la pagina de "MercuryTours"
    When acceder al enlace "Cruises" del menu de opciones

Scenario: Reservar un crucero en el sitio web
    Then se muestra el mensaje "Always carry a travel first aid kit with bandages, antacids, aspirin, bee sting wipes, and other basic necessities." en el sitio web
      And se muestra la imagen "ARUBA"

Scenario: Regresar a la pagina de "MercuryTours" cuando falla la pagina de cruceros
    Then se muestra el mensaje "This section of our web site is currently under construction.   Sorry for any inconvienece." en el sitio web
      And se muestra la imagen "UNDER CONSTRUCTION"
      And presionar la imagen de boton "BACK TO HOME" para volver

@iniciar_sesion_usuario
Scenario: Acceder a la pagina de cruceros como un usuario ya registrado
    Then se muestra el mensaje "Welcome to Cruises" en el sitio web