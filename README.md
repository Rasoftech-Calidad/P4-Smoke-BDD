# P4-Smoke-BDD
Practica #4 de la materia de gestion de calidad. Realizar smoke testing, usando BDD para establecer lenguaje comun y automatizar pruebas.

Este proyecto consiste en crear escenarios de prueba para el sitio "Mercury tours" y automatizarlas
Para esto se utilizo:
-  BDD
-  Cucumber
-  Ruby
-  Capybara
-  Selenium web driver para Chrome

Tambien se definieron las pruebas que son parte del smoketest.

Enlace del sitio MercuryTours: https://demo.guru99.com/test/newtours

[![My Skills](https://skillicons.dev/icons?i=ruby)](https://skillicons.dev)
![alt text][cucumber]

[cucumber]: https://github.com/cucumber/html-formatter/blob/main/javascript/logo.svg


## Ejecutar SmokeTest
Para ejecutar los comandos, se necesita clonar este repositorio e ingresar al directorio "AutomationBDD" desde una linea de comandos.

En la linea de comandos podra ejecurar los siguientes comandos:

### Ejecutar solo el SmokeTest:
```
cucumber -t @smoketest --publish-quiet
```

### Ejecutar todas las pruebas:
```
cucumber features --publish-quiet
```
