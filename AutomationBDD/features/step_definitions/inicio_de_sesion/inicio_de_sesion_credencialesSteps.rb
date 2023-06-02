# Given yo accedo a la pagina de MercuryTours
Given('yo accedo a la pagina de MercuryTours') do
    visit 'http://demo.guru99.com/test/newtours/'
end

# When accedo al enlace de "SIGN-ON" para iniciar sesion
When(/^accedo al enlace de "([^"]*)" para iniciar sesion$/) do |signon|
    css = 'body > div:nth-child(5) > table > tbody > tr > td:nth-child(2) > table > tbody > tr:nth-child(2) > td > table > tbody > tr > td:nth-child(1) > a'
    find(:css, css).click
    #click_link(signon)
end

When('ingreso un <User Name> y <Password> correctos') do
    pending # Write code here that turns the phrase above into concrete actions
end