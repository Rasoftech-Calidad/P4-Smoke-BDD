Feature: As a usuario comun
         I want ver las descripciones y fotografias de los entrenadores
         so that tomar la decision de elegir un vehiculo segun su marca y numero de asientos

Scenario: Ingresar al enlace "Our Coaches" de Mercury Tours      
  Given estoy la pagina principal "Home"
  But necesito conexion a internet
  When Click en el enlace "Our Coaches"
  Then accede exitosamente a la vista seleccionada
  And se muestra la informacion detallada de los vehiculos
  And se visualiza fotografias de cada uno

Scenario: Visualizar 1 imagen dentro la vista de "Our Coaches" de Mercury Tours     
  Given estoy la vista de Nuestros entrenadores
  When Click en alguna imagen de caracteristica de vehiculo deseado
  Then se maximiza la imagen seleccionada
  And se visualiza la caracteristica que me interesaba