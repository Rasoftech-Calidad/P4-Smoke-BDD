Feature: Registrarse en Mercury Tours
    As Un usuario comun
    I Quiero registrar mis datos
    So Ingresar a la pagina y obtener los beneficios por estar registrado en la página de Mercury Tours

    Background:
        Given acceder a la pagina de "MercuryTours"
        And acceder al enlace "Register" de la barra de navegacion

    Scenario: Regresar a la pagina de "MercuryTours" cuando falla el registro de usuarios
        When Presionar el boton "submit".
        And se muestra la imagen "REGISTER"
        Then se muestra el mensaje "Thank you for registering. You may now sign-in using the user name and password you've just entered." en el sitio web
        And presionar la imagen de boton "BACK TO HOME" para volver desde la barra de navegacion

    @smoketest
    Scenario: Registrar un Usuario
        When Ingreso los campos como se muestra a continuacion
            | First Name:       | Gabriel            |
            | Last Name:        | Lopez              |
            | Phone:            | 234543             |
            | Email:            | Gabriel@gmail.com  |
            | Address:          | Av. Circunvalación |
            | City:             | Cochabamba         |
            | State/Province:   | Cochabamba         |
            | Postal Code:      | 98971234           |
            | Country:          | BOLIVIA            |
            | User Name:        | User               |
            | Password:         | Password           |
            | Confirm Password: | Password           |
        And se muestra la imagen "REGISTER"
        And se muestra el mensaje "To create your account, we'll need some basic information about you. This information will be used to send reservation confirmation emails, mail tickets when needed and contact you if your travel arrangements change. Please fill in the form completely." en el sitio web
        And se muestra el mensaje "Contact Information" en el sitio web
        And se muestra el mensaje "Mailing Information" en el sitio web
        And se muestra el mensaje "User Information" en el sitio web
        And Presionar el boton "submit".
        Then Se muestra el mensaje de confirmación

    @smoketest
    Scenario: Al registrar un usuario con el campo de "User Name" vacio deberia mostrar una alerta correspondiente
        When Ingreso los campos como se muestra a continuacion
            | First Name:       | Gabriel            |
            | Last Name:        | Lopez              |
            | Phone:            | 234543             |
            | Email:            | Gabriel@gmail.com  |
            | Address:          | Av. Circunvalación |
            | City:             | Cochabamba         |
            | State/Province:   | Cochabamba         |
            | Postal Code:      | 98971234           |
            | Country:          | BOLIVIA            |
            | Password:         | password           |
            | Confirm Password: | password           |
        And Presionar el boton "submit".
        Then se muestra el mensaje "The field User Name is required" en el sitio web

    @smoketest
    Scenario: Al registrar un usuario con dos diferentes contraseñas en los campos password y Confirm Password deberia mostrar una alerta
        When Ingreso los campos como se muestra a continuacion
            | First Name:       | Gabriel            |
            | Last Name:        | Lopez              |
            | Phone:            | 234543             |
            | Email:            | Gabriel@gmail.com  |
            | Address:          | Av. Circunvalación |
            | City:             | Cochabamba         |
            | State/Province:   | Cochabamba         |
            | Postal Code:      | 98971234           |
            | Country:          | BOLIVIA            |
            | User Name:        | User               |
            | Password:         | password1          |
            | Confirm Password: | password2          |
        And Presionar el boton "submit".
        Then se muestra el mensaje "PAssword and con.password does not match" en el sitio web

    @smoketest
    Scenario: Al registrar un usuario con una contraseña demasiado corta deberia mostrar la alerta correspondiente
        When Ingreso los campos como se muestra a continuacion
            | First Name:       | Gabriel            |
            | Last Name:        | Lopez              |
            | Phone:            | 234543             |
            | Email:            | Gabriel@gmail.com  |
            | Address:          | Av. Circunvalación |
            | City:             | Cochabamba         |
            | State/Province:   | Cochabamba         |
            | Postal Code:      | 98971234           |
            | Country:          | BOLIVIA            |
            | User Name:        | User               |
            | Password:         | P                  |
            | Confirm Password: | P                  |
        And Presionar el boton "submit".
        Then se muestra el mensaje "Password too short" en el sitio web

    @smoketest
    Scenario: Al registrar un usuario con un E-mail con un formato incorrecto deberia mostrar la alerta correspondiente
        When Ingreso los campos como se muestra a continuacion
            | First Name:       | Gabriel            |
            | Last Name:        | Lopez              |
            | Phone:            | 234543             |
            | Email:            | Gabriel            |
            | Address:          | Av. Circunvalación |
            | City:             | Cochabamba         |
            | State/Province:   | Cochabamba         |
            | Postal Code:      | 98971234           |
            | Country:          | BOLIVIA            |
            | User Name:        | User               |
            | Password:         | Password           |
            | Confirm Password: | Password           |
        And Presionar el boton "submit".
        Then se muestra el mensaje "Incorrect email format" en el sitio web

    @smoketest
    Scenario: Al registrar un usuario con un "User Name" ya existente deberia mostrar la alerta correspondiente
        When Ingreso los campos como se muestra a continuacion
            | First Name:       | Gabriel            |
            | Last Name:        | Lopez              |
            | Phone:            | 234543             |
            | Email:            | Gabriel@gmail.com  |
            | Address:          | Av. Circunvalación |
            | City:             | Cochabamba         |
            | State/Province:   | Cochabamba         |
            | Postal Code:      | 98971234           |
            | Country:          | BOLIVIA            |
            | User Name:        | User               |
            | Password:         | Password           |
            | Confirm Password: | Password           |
        And Presionar el boton "submit".
        Then se muestra el mensaje "the username already exists" en el sitio web