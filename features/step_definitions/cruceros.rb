# Reservar un crucero en el sitio web
And(/^se muestra la imagen "ARUBA"$/) do
    expect(page).to have_xpath('//img[@src="images/featured_destination.gif"]')
end