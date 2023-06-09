# Reservar un vuelo por defecto
And(/^se muestra la imagen "FLIGHT FINDER"$/) do
  expect(page).to have_xpath('//img[@src="images/mast_flightfinder.gif"]')
end

# Buscar vuelo no valido debido a fecha de salida adelantada a la fecha de llegada
# Reservar un vuelo totalmente personalizado
# Buscar un vuelo en un dia inexistente
# Reservar un vuelo con un usuario ya registrado
When('ingrese los campos requeridos como se muestra a continuación para el vuelo') do |table|
    data = table.rows_hash
    data.each_pair do |key, value|
      case key
      when 'Type:'
        radio_button = find('[value="oneway"]') if value.downcase == 'one way'
        radio_button = find('[value="roundtrip"]') if value.downcase == 'round trip'
        radio_button.choose
      when 'Passengers:'
        select value, from: 'passCount'
      when 'Departing From:'
        select value, from: 'fromPort'
      when 'On:'
        value_date = value.split
        select value_date[0], from: 'fromMonth'
        select value_date[1], from: 'fromDay'
      when 'Arriving In:'
        select value, from: 'toPort'
      when 'Returning:'
        value_date = value.split
        select value_date[0], from: 'toMonth'
        select value_date[1], from: 'toDay'
      when 'Service Class:'
        radio_button = find('[value="Coach"]') if value.downcase == 'economy class'
        radio_button = find('[value="Business"]') if value.downcase == 'business class'
        radio_button = find('[value="First"]') if value.downcase == 'first class'
        radio_button.choose
      when 'Airline:'
        select value, from: 'airline'
      end
    end
end