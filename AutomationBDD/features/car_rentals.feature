Feature: Acceder a alquiler de coches en "MercuryTours"
    As un usuario Comun
    I quiero acceder a la pagina de alquiler de coches en el sitio web
    so referencias e imagenes de los tipos de modelos

Background:
    Given acceder a la pagina de "MercuryTours"
      And acceder al enlace "Car Rentals" del menu de opciones

Scenario: Regresar a la pagina de "MercuryTours" cuando falla la pagina de alquiler de coches
    Then se muestra la imagen "UNDER CONSTRUCTION"
      And se muestra el mensaje "This section of our web site is currently under construction.   Sorry for any inconvienece."
      And presionar la imagen de boton "BACK TO HOME"

Scenario: Confirmar los alquileres de coches en el sitio web
    Then se muestra el mensaje "Welcome, you are offered to send an inventory of models, colors and updates!"
      And presionar la imagen de boton "BACK TO HOME"

@iniciar_sesion_usuario
Scenario: Acceder a la pagina de alquiler de coches como un usuario ya registrado
  Then se muestra la imagen "UNDER CONSTRUCTION"
    And se muestra el mensaje "This section of our web site is currently under construction.   Sorry for any inconvienece."