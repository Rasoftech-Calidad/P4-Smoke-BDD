Feature: Buscador de vuelos en "MercuryTours"
    As un usuario Comun
    I reservar un vuelo en el sitio de "MercuryTours"
    so poder personalizar el vuelo o buscarlo

Background:
    Given acceder a la pagina de "MercuryTours"
      And acceder al enlace "Flights" link

@maximize
Scenario: regresar a la pagina de "MercuryTours" cuando falla la reserva de un vuelo
    When presionar la imagen de boton "Continue->"
      And muestra el mensaje "After flight finder - No Seats Avaialble"
      And presionar la imagen de boton "BACK TO HOME"
    Then acceder a la pagina de "MercuryTours"

@maximize
Scenario: reservar un vuelo por defecto
    When presionar la imagen de boton "Continue->"
    Then muestra el mensaje "After flight finder - No Seats Avaialble"

@maximize
Scenario: Buscar vuelo no valido debido a fecha de salida adelantada a la fecha de llegada
    When ingrese los campos requeridos como se muestra a continuación para el vuelo
      | Type:           | Round Trip     |
      | Passengers:     | 1              |
      | Departing form: | Acapulco       |
      | On:             | February 1     |
      | Arriving In:    | Acapulco       |
      | Returning:      | January 1      | 
      | Service Class:  | Business class |
      | Airline:        | No Preference  |
      And presionar la imagen de boton "Continue->"
    Then muestra el mensaje "After flight finder - No Seats Avaialble"