# Se muestra en un lugar especifico
Then(/^se muestra el mensaje "([^"]*)" en la parte central del sitio web$/) do |message|
xpath = '/html/body/div[2]/table/tbody/tr/td[2]/table/tbody/tr[4]/td/table/tbody/tr[1]/td[2]/table/tbody/tr[1]/td/p/font/b'
find(:xpath, xpath).to have_content(message)
end

# TODOS LOS ESCENARIOS
And(/^Presionar el boton "([^"]*)"$/) do |buttonName|
    click_button(buttonName) 
end

When(/^Modifico uno de los campos como se muestra a continuacion$/) do |table|
    data = table.rows_hash
    data.each_pair do |key, value|
      case key
      when "First Name:"
          fill_in 'firstName', :with => value
          @name = value
      when "Last Name:"
          fill_in 'lastName', :with => value
          @lastName = value
      when "Phone:"
          fill_in 'phone', :with => value
      when "Email:"
          fill_in 'userName', :with => value
      when "Address:"
          fill_in 'address1', :with => value
      when "City:"
          fill_in 'city', :with => value
      when "State/Province:"
          fill_in 'state', :with => value
      when "Postal Code:"
          fill_in 'postalCode', :with => value
      when "Country:"
          select(value, :from => 'country')
      when "User Name:"
          fill_in 'email', :with => value
          
      when "Password:"
          fill_in 'password', :with => value
      when "Confirm Password:"
          fill_in 'confirmPassword', :with => value
          
      end
    end
end