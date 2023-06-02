#Given acceder a la pagina de MercuryTours
Given(/^acceder a la pagina de MercuryTours$/) do
    page.driver.browser.manage.window.maximize
    visit('http://demo.guru99.com/test/newtours/')

end

#Given acceder al enlace "Flights"
Given(/^acceder al enlace "([^"]*)"$/) do |linkText|
    click_link(linkText)
  end

#When ingrese los campos requeridos como se muestra a continuación
When(/^ingrese los campos requeridos como se muestra a continuación$/) do |table|
    data = table.rows_hash
    data.each_pair do |key, value|
      case key
        when "Type:"
            select(value, :from => 'roundtrip')
        when "Passengers:"
            select(value, :from => 'passCount')
        when "Departing From:"
            select(value, :from => 'fromPort')
        when "On:"
            select(value, :from => 'fromMonth')
        when "Arriving In:"
            select(value, :from => 'toPort')
        when "Returning:"
            select(value, :from => 'toMonth')
        when "Service class:"
            select(value, :from => 'Coach')
        when "Airline:"
            select(value, :from => 'airline')
      end
    end
  end

#When presionar en el boton "Continue"
When(/^presionar en el boton "Continue$/) do
  xpath_base = '/html/body/div[2]/table/tbody/tr/td[2]/table/tbody/tr[4]/td/table/tbody/tr/td[2]/table/tbody/tr[5]/td/form/table/tbody/tr[14]/td/input'
  find(:xpath, xpath_base).click
end















