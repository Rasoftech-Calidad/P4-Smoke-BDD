Feature: Buscador de vuelos en MercuryTours
    As un usuario Comun
    I reservar un vuelo en el sitio de MercuryTours
    so poder personalizar el vuelo o buscarlo

Background:
    Given acceder a la pagina de MercuryTours
      And acceder al enlace "Flights"

@maximize
Scenario: Reservar un vuelo de clase economica
    When ingrese los campos requeridos como se muestra a continuación
      And seleccione el campo de entrada Round Trip en "Type"
      And seleccione el campo de entrada 1 en "Passengers"
      And seleccione el campo de entrada Acapulco en "Departing From"
      And seleccione el campo de entrada July 12 en "On"
      And seleccione el campo de entrada Acapulco en "Arriving In"
      And seleccione el campo de entrada July 12 en "Returning"
      And seleccione el campo de entrada Economy class en "Service Class"
      And seleccione el campo de entrada No Preference en "Airline"
      And presionar en el boton "Continue->"
    Then deberia ver el mensaje After flight finder - No Seats Avaialble
      And presionar en el boton "Back to Home"

@maximize
Scenario: Reservar un vuelo de clase negocio
    When ingrese los campos requeridos como se muestra a continuación
      | Type:           |  Round Trip     |
      | Passengers:     |  1              |
      | Departing form: |  Acapulco       |
      | On:             |  July 12        |
      | Arriving In:    |  Acapulco       |
      | Returning:      |  July 12        | 
      | Service Class:  | Business class  |
      | Airline:        | No Preference   |
      And presionar en el boton "Continue->"
    Then deberia ver el mensaje After flight finder - No Seats Avaialble
      And presionar en el boton "Back to Home"

@maximize
Scenario Outline: Reservar un vuelo de primera clase
    When ingrese los campos requeridos como se muestra a continuación
      And selecciono el <Type>
      |Passengers:        |   1         |
      |Departing form:    |   Acapulco  |
      |On:                |   July 12   |
      |Arriving In:       |   Acapulco  |
      |Returning:         |   July 12   |
      And selecciono el <Service Class>
      And selecciono el <Airline>
      And presionar en el boton "Continue->"
    Then deberia ver el mensaje After flight finder - No Seats Avaialble
      And presionar en el boton "Back to Home"
    Examples:     
      | Type          | Service Class | Airline               |
      | "Round Trip"  | "First class" | "No Preference"       |
      | "Round Trip"  | "First class" | "Blue Skies Airlines" |
      | "Round Trip"  | "First class" | "Unified Airlines"    |
      | "Round Trip"  | "First class" | "Pangea Airlines"     |
      | "One Way"     | "First class" | "No Preference"       |
      | "One Way"     | "First class" | "Blue Skies Airlines" |
      | "One Way"     | "First class" | "Unified Airlines"    |
      | "One Way"     | "First class" | "Pangea Airlines"     |