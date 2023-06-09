Feature: Acceder a itinerarios en "MercuryTours"
    As un usuario Comun
    I quiero acceder a la pagina de itinerarios en el sitio web
    so mayores informaciones en las descripciones

Background:
    Given acceder a la pagina de "MercuryTours"
      And acceder al enlace "Flights" del menu de opciones
      And acceder al enlace "ITINERARY" de la barra de navegacion

Scenario: Regresar a la pagina de "MercuryTours" cuando falla la pagina de itinerarios
    Then se muestra la imagen "FLIGHT FINDER"
        And se muestra el mensaje "Use our Flight Finder to search for the lowest fare on participating airlines. Once you've booked your flight, don't forget to visit the Mercury Tours Hotel Finder to reserve lodging in your destination city."

Scenario: Pedir una descripcion al itinerario en el sitio web
    Then se muestra el mensaje "Waiting for results!"
      And presionar la imagen de boton "BACK TO HOME"

@iniciar_sesion_usuario
Scenario: Acceder a la pagina de itinerarios como un usuario ya registrado
  Then se muestra la imagen "FLIGHT FINDER"
    And se muestra el mensaje "Use our Flight Finder to search for the lowest fare on participating airlines. Once you've booked your flight, don't forget to visit the Mercury Tours Hotel Finder to reserve lodging in your destination city."