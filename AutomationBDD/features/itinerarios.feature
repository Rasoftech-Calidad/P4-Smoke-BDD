Feature: Acceder a itinerarios en "MercuryTours"
    As un usuario Comun
    I quiero acceder a la pagina de itinerarios en el sitio web
    so mayores informaciones en las descripciones

Background:
    Given acceder a la pagina de "MercuryTours"
    When acceder al enlace "Flights" del menu de opciones
    When acceder al enlace "ITINERARY" de la barra de navegacion

Scenario: Pedir una descripcion al itinerario en el sitio web
    Then se muestra el mensaje "Waiting for results!" en el sitio web

Scenario: Regresar a la pagina de "MercuryTours" cuando falla la pagina de itinerarios
    Then presionar la imagen de boton "Continue->" para continuar
    Then se muestra el mensaje "After flight finder - No Seats Avaialble" en el sitio web

@iniciar_sesion_usuario
Scenario: Acceder a la pagina de itinerarios como un usuario ya registrado
    Then se muestra el mensaje "Use our Flight Finder to search for the lowest fare on participating airlines. Once you've booked your flight, don't forget to visit the Mercury Tours Hotel Finder to reserve lodging in your destination city." en el sitio web
    Then se muestra el mensaje "Flight Details" en el sitio web
    Then se muestra el mensaje "Preferences" en el sitio web  
      And se muestra la imagen "FLIGHT FINDER"