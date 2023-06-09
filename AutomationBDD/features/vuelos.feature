Feature: Buscador de vuelos en "MercuryTours"
    As un usuario Comun
    I reservar un vuelo en el sitio web
    so poder personalizar el vuelo

Background:
    Given acceder a la pagina de "MercuryTours"
      And acceder al enlace "Flights" del menu de opciones

Scenario: Regresar a la pagina de "MercuryTours" cuando falla la reserva de un vuelo
    When presionar la imagen de boton "Continue->" para continuar
    Then se muestra el mensaje "After flight finder - No Seats Avaialble" en el sitio web
      And presionar la imagen de boton "BACK TO HOME" para volver desde la barra de navegacion

Scenario: Reservar un vuelo por defecto
    When se muestra la imagen "FLIGHT FINDER"
      And se muestra el mensaje "Use our Flight Finder to search for the lowest fare on participating airlines. Once you've booked your flight, don't forget to visit the Mercury Tours Hotel Finder to reserve lodging in your destination city." en el sitio web
      And se muestra el mensaje "Flight Details" en el sitio web
      And se muestra el mensaje "Preferences" en el sitio web
    Then presionar la imagen de boton "Continue->" para continuar
      And se muestra el mensaje "flight booked according to preference and class!" en el sitio web

Scenario: Buscar vuelo no valido debido a fecha de salida adelantada a la fecha de llegada
    When ingrese los campos requeridos como se muestra a continuación para el vuelo
      | Type:           | Round Trip     |
      | Passengers:     | 1              |
      | Departing form: | Acapulco       |
      | On:             | June 20        |
      | Arriving In:    | Acapulco       |
      | Returning:      | June 10        | 
      | Service Class:  | Business class |
      | Airline:        | No Preference  |
      And presionar la imagen de boton "Continue->" para continuar
    Then se muestra el mensaje "Invalid Date Range" en el sitio web

Scenario: Reservar un vuelo totalmente personalizado
    When ingrese los campos requeridos como se muestra a continuación para el vuelo
      | Type:           |  One Way            |
      | Passengers:     |  4                  |
      | Departing form: |  Zurich             |
      | On:             |  December 31        |
      | Arriving In:    |  Zurich             |
      | Returning:      |  December 31        | 
      | Service Class:  | First class         |
      | Airline:        | Blue Skies Airlines |
      And presionar la imagen de boton "Continue->" para continuar
    Then se muestra el mensaje "successful booking!" en el sitio web

Scenario: Buscar un vuelo en un dia inexistente
    When ingrese los campos requeridos como se muestra a continuación para el vuelo
      | Type:           |  One Way            |
      | Passengers:     |  4                  |
      | Departing form: |  Zurich             |
      | On:             |  February 31        |
      | Arriving In:    |  Zurich             |
      | Returning:      |  April 10           | 
      | Service Class:  | First class         |
      | Airline:        | Blue Skies Airlines |
      And presionar la imagen de boton "Continue->" para continuar
    Then se muestra el mensaje "Invalid Date" en el sitio web

@iniciar_sesion_usuario
Scenario: Reservar un vuelo con un usuario ya registrado
    When ingrese los campos requeridos como se muestra a continuación para el vuelo
      | Type:           | Round Trip     |
      | Passengers:     | 1              |
      | Departing form: | Acapulco       |
      | On:             | July 12        |
      | Arriving In:    | Acapulco       |
      | Returning:      | July 12        | 
      | Service Class:  | Business class |
      | Airline:        | No Preference  |
      And presionar la imagen de boton "Continue->" para continuar
    Then se muestra el mensaje "flight booked by the user!" en el sitio web