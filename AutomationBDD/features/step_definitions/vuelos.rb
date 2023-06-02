#When presionar la imagen de boton "Continue->"
When(/^presionar la imagen de boton "Continue->"$/) do
    xpath = '/html/body/div[2]/table/tbody/tr/td[2]/table/tbody/tr[4]/td/table/tbody/tr/td[2]/table/tbody/tr[5]/td/form/table/tbody/tr[14]/td/input'
    find(:xpath, xpath).click
end

#Then muestra el mensaje "After flight finder - No Seats Avaialble"
And('muestra el mensaje "After flight finder - No Seats Avaialble"') do
    expect(page).to have_content('After flight finder - No Seats Avaialble')
end

#When ingrese los campos requeridos como se muestra a continuación para el vuelo
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

#Then muestra el mensaje "Invalid Date Range"
Then('muestra el mensaje "Invalid Date Range"') do
  expect(page).to have_content('Invalid Date Range')
end

#Then muestra el mensaje "Invalid Date"
Then('muestra el mensaje "Invalid Date"') do
  expect(page).to have_content('Invalid Date')
end