Feature: Buscador de vuelos en "MercuryTours"
    As un usuario Comun
    I reservar un vuelo en el sitio web
    so poder personalizar el vuelo

Background:
    Given acceder a la pagina de "MercuryTours"
      And acceder al enlace "Flights" del menu de opciones

Scenario: Regresar a la pagina de "MercuryTours" cuando falla la reserva de un vuelo
    When presionar la imagen de boton "Continue->"
      And muestra el mensaje "After flight finder - No Seats Avaialble"
      And presionar la imagen de boton "BACK TO HOME"
    Then acceder a la pagina de "MercuryTours"

Scenario: Reservar un vuelo por defecto
    When presionar la imagen de boton "Continue->"
    Then muestra el mensaje "After flight finder - No Seats Avaialble"

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
      And presionar la imagen de boton "Continue->"
    Then muestra el mensaje "Invalid Date Range"

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
      And presionar la imagen de boton "Continue->"
    Then muestra el mensaje "After flight finder - No Seats Avaialble"

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
      And presionar la imagen de boton "Continue->"
    Then muestra el mensaje "Invalid Date"

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
      And presionar la imagen de boton "Continue->"
    Then muestra el mensaje "After flight finder - No Seats Avaialble"