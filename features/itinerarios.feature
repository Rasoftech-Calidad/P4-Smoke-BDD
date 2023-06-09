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
      And presionar la imagen de boton "BACK TO HOME" para volver desde la barra de navegacion

@iniciar_sesion_usuario
Scenario: Acceder a la pagina de itinerarios como un usuario ya registrado
    Then se muestra el mensaje "Welcome to ITINERARY" en el sitio web