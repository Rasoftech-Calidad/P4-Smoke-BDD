Feature: Acceder a vacaciones en "MercuryTours"
    As un usuario Comun
    I quiero acceder a la seccion de vacaciones en el sitio web
    so planificar y reservar vacaciones

Background:
    Given acceder a la pagina de "MercuryTours"
      And acceder al enlace "Vacations" del menu de opciones

Scenario: Acceder a la pagina de vacaciones
    Then se muestra la imagen "UNDER CONSTRUCTION"
      And se muestra el mensaje "This section of our web site is currently under construction.   Sorry for any inconvienece."

@iniciar_sesion_usuario
Scenario: Acceder a la pagina de vacaciones como un usuario ya registrado
  Then se muestra la imagen "UNDER CONSTRUCTION"
    And se muestra el mensaje "This section of our web site is currently under construction.   Sorry for any inconvienece."