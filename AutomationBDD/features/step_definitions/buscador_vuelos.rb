#Given accedo al enlace de "Flights"
Given(/^accedo al enlace de "Flights"$/) do
    page.driver.browser.manage.window.maximize
    visit('https://demo.guru99.com/test/newtours/reservation.php')

end

#When ingreso los campos requeridos como se muestra a Continuacion
When(/^ingreso los campos requeridos como se muestra a Continuacion$/) do |table|
    data = table.rows_hash
    data.each_pair do |key, value|
      case key
        when "Type:"
            select(value, :from => 'roundtrip')
        when "Passengers:"
            select(value, :from => 'passCount'  )
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















