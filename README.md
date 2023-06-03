# P4-Smoke-BDD
Practica #4 de la materia de gestion de calidad. Realizar smoke testing, usando BDD para establecer lenguaje comun y automatizar pruebas.
# Enlaces
Trello: https://trello.com/b/ohBNgY0x/practica-4-automatizaci%C3%B3n
DEMO: https://docs.google.com/presentation/d/1Vek6z-hKZ_PFNzgZfhhzb9xz_rdaB1cc/edit?usp=sharing&ouid=115374638990980240919&rtpof=true&sd=true

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
