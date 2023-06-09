Feature: Acceder a alquiler de coches en "MercuryTours"
    As un usuario Comun
    I quiero acceder a la pagina de alquiler de coches en el sitio web
    so referencias e imagenes de los tipos de modelos

Background:
    Given acceder a la pagina de "MercuryTours"
    When acceder al enlace "Car Rentals" del menu de opciones

Scenario: Confirmar los alquileres de coches en el sitio web
    Then se muestra el mensaje "Welcome, you are offered to send an inventory of models, colors and updates!" en el sitio web

Scenario: Regresar a la pagina de "MercuryTours" cuando falla la pagina de alquiler de coches
    Then se muestra el mensaje "This section of our web site is currently under construction.   Sorry for any inconvienece." en el sitio web
        And se muestra la imagen "UNDER CONSTRUCTION"
        And presionar la imagen de boton "BACK TO HOME" para volver

@iniciar_sesion_usuario
Scenario: Acceder a la pagina de alquiler de coches como un usuario ya registrado
    Then se muestra el mensaje "Welcome to Car Rentals" en el sitio web