# TODOS LOS ESCENARIOS
When(/^Ingreso los campos como se muestra a continuacion$/) do |table|
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

# TODOS LOS ESCENARIOS
And(/^Presionar el boton "([^"]*)"$/) do |buttonName|
    click_button(buttonName) 
end

# Registrar un Usuario
Then(/^Se muestra el mensaje de confirmación$/) do
    greeting = "Dear"+" "+@name+" "+@lastName 	
    expect(page).to have_content(greeting)
end

# Regresar a la pagina de "MercuryTours" cuando falla el registro de usuarios
# Registrar un Usuario
And(/^se muestra la imagen "REGISTER"$/) do
    expect(page).to have_xpath('//img[@src="images/mast_register.gif"]')
end