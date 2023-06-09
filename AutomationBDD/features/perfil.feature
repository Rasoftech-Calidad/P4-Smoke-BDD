Feature: Acceder a perfil en "MercuryTours"
    As un usuario Comun
    I quiero acceder a la pagina de perfil en el sitio web
    so ver mi informacion basica

Background:
    Given acceder a la pagina de "MercuryTours"
    When acceder al enlace "Flights" del menu de opciones
    When acceder al enlace "PROFILE" de la barra de navegacion

Scenario: Editar informacion del perfil en el sitio web
    Then se muestra el mensaje "successful changes!" en el sitio web

Scenario: Regresar a la pagina de "MercuryTours" cuando falla la pagina de perfil
    Then presionar la imagen de boton "Continue->" para continuar
    Then se muestra el mensaje "After flight finder - No Seats Avaialble" en el sitio web
      And presionar la imagen de boton "BACK TO HOME" para volver desde la barra de navegacion

@iniciar_sesion_usuario
Scenario: Acceder a la pagina de perfil como un usuario ya registrado
    Then se muestra el mensaje "Welcome to PROFILE" en el sitio web