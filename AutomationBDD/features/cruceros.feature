Feature: Acceder a cruceros en "MercuryTours"
    As un usuario Comun
    I quiero acceder a la pagina de cruceros en el sitio web
    so reservar un viaje increible

Background:
    Given acceder a la pagina de "MercuryTours"
      And acceder al enlace "Cruises" del menu de opciones

Scenario: Acceder a la pagina de cruceros
    Then acceder a la pagina de "MercuryTours"

Scenario: Reservar un crucero en el sitio web
    Then se muestra el mensaje "Welcome, your cruise has already been confirmed on the day and time. To travel!"
      And presionar la imagen de boton "BACK TO HOME"