# carros_renta, contacto, cruceros, destinos, hoteles, vacaciones, soporte
And(/^se muestra la imagen "UNDER CONSTRUCTION"$/) do
    expect(page).to have_xpath('//img[@src="images/mast_construction.gif"]')
end