Feature: Buscador de vuelos en Mercury Tours
    As un usuario Comun
    I reservar un vuelo en el sitio de Mercury Tours
    so poder personalizar el vuelo, preferencia y aerolinea

Background:
    Given yo accedo al enlace de "Flights"
      And se visualiza el formulario del vuelo

@maximize
Scenario Outline: Reservar un vuelo de clase economica
    When ingreso los campos requeridos como se muestra a Continuacion
      But selecciono el <Type>
      |Passengers:        |   1         |
      |Departing form:    |   Acapulco  |
      |On:                |   July 12   |
      |Arriving In:       |   Acapulco  |
      |Returning:         |   July 12   |
      But selecciono la clase de servicio "Economy class"
      But selecciono el <Airline>
      And presionar en el boton "Continue"
    Then deberia ver el mensaje no hay asientos disponibles
      And presionar en el boton "Back to Home"
    Examples:     
      | Type          | Airline               |
      | "Round Trip"  | "No Preference"       |
      | "Round Trip"  | "Blue Skies Airlines" |
      | "One Way"     | "Unified Airlines"    |
      | "One Way"     | "Pangea Airlines"     |

@maximize
Scenario Outline: Reservar un vuelo de clase negocio
    When ingreso los campos requeridos como se muestra a Continuacion
      But selecciono el <Type>
      |Passengers:        |   4         |
      |Departing form:    |   Paris     |
      |On:                |   May 2     |
      |Arriving In:       |   London  |
      |Returning:         |   April 29  |
      But selecciono la clase de servicio "Business class"
      But selecciono el <Airline>
      And presionar en el boton "Continue"
    Then deberia ver el mensaje no hay asientos disponibles
      And presionar en el boton "Back to Home"
    Examples:     
      | Type          | Airline               |
      | "One Way"     | "Pangea Airlines"     |
      | "One Way"     | "Unified Airlines"    |
      | "Round Trip"  | "Blue Skies Airlines" |
      | "Round Trip"  | "No Preference"       |