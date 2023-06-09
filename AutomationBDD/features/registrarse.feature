Feature: Registrarse en Mercury Tours
    As Un usuario comun
    I Quiero registrar mis datos
    So Ingresar a la pagina y obtener los beneficios por estar registrado en la página de Mercury Tours
    Background:
        Given acceder a la pagina de "MercuryTours"
        And acceder al enlace "Register" de la barra de navegacion

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
        And Presionar el boton "submit"
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
        And Presionar el boton "submit"
        Then Se muestra el mensaje de error "The field User Name is required"

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
        And Presionar el boton "submit"
        Then Se muestra el mensaje de error "PAssword and con.password does not match"

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
        And Presionar el boton "submit"
        Then Se muestra el mensaje de error "Password too short"
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
        And Presionar el boton "submit"
        Then Se muestra el mensaje de error "Incorrect email format"

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
        And Presionar el boton "submit"
        Then Se muestra el mensaje de error "the username already exists"