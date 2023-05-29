Feature: As a usuario comun
         I want ver las descripciones y fotografias de los entrenadores
         so that tomar la decision de elegir un vehiculo segun su marca y numero de asientos

Scenario: Ingresar al enlace "Our Coaches" de Mercury Tours      
  Given estoy en el navegador de Google Chrome
  And necesito conexion a internet
  When Busco Mercury Tours
  And Click en el enlace Mercury Tours Home Page de entre las busquedas
  But no requiere username y password
  Then accede exitosamente a la pagina principal "Home"