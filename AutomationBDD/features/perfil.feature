Feature: Acceder a perfil en "MercuryTours"
    As un usuario Comun
    I quiero acceder a la pagina de perfil en el sitio web
    so ver mi informacion basica

Background:
    Given acceder a la pagina de "MercuryTours"
      And acceder al enlace "Flights" en el menu de opciones
      And acceder al enlace "PROFILE" en la barra de navegacion

Scenario: Regresar a la pagina de "MercuryTours" cuando falla la pagina de perfil
    Then se muestra la imagen "FLIGHT FINDER"
        And se muestra el mensaje "Use our Flight Finder to search for the lowest fare on participating airlines. Once you've booked your flight, don't forget to visit the Mercury Tours Hotel Finder to reserve lodging in your destination city."

Scenario: Editar informacion del perfil en el sitio web
    Then se muestra el mensaje "successful changes!"
      And presionar la imagen de boton "BACK TO HOME"

@iniciar_sesion_usuario
Scenario: Acceder a la pagina de perfil como un usuario ya registrado
  Then se muestra la imagen "FLIGHT FINDER"
    And se muestra el mensaje "Use our Flight Finder to search for the lowest fare on participating airlines. Once you've booked your flight, don't forget to visit the Mercury Tours Hotel Finder to reserve lodging in your destination city."