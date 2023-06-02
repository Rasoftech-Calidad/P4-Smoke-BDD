Feature: Acceder a itinerarios en "MercuryTours"
    As un usuario Comun
    I quiero acceder a la pagina de itinerarios en el sitio web
    so mayores informaciones en las descripciones

Background:
    Given acceder a la pagina de "MercuryTours"
      And acceder al enlace "Flights" en el menu de opciones
      And acceder al enlace "ITINERARY" en la barra de navegacion

Scenario: Regresar a la pagina de "MercuryTours" cuando falla la pagina de itinerarios
    Then se muestra la imagen "UNDER CONSTRUCTION"
      And se muestra el mensaje "This section of our web site is currently under construction.   Sorry for any inconvienece."
      And presionar la imagen de boton "BACK TO HOME"

Scenario: Pedir una descripcion al itinerario en el sitio web
    Then se muestra el mensaje "Waiting for results!"
      And presionar la imagen de boton "BACK TO HOME"

@iniciar_sesion_usuario
Scenario: Acceder a la pagina de itinerarios como un usuario ya registrado
  Then se muestra la imagen "UNDER CONSTRUCTION"
    And se muestra el mensaje "This section of our web site is currently under construction.   Sorry for any inconvienece."