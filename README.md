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
Para ejecutar los comandos, se necesita clonar este repositorio e ingresar al directorio "P4-Smoke-BDD" desde una linea de comandos.

En la linea de comandos podra ejecutar los siguientes comandos:

### Ejecutar solo las pruebas del SmokeTest (BVT):
```
cucumber -t @smoketest --publish-quiet
```

### Ejecutar todas las pruebas:
```
cucumber features --publish-quiet
```

## Reporte de ejecucion:
En la raíz de este proyecto se encuentra el archivo `REPORT.htm`, el cual debe abrir con un navegador para ver los resultados de una ejecución completamente exitosa y sin percances ocasionados por el ambiente de pruebas (dispositivo, red, etc).
