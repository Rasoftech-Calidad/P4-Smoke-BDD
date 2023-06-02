Given(/^acceder a la pagina de MercuryTours$/) do
    page.driver.browser.manage.window.maximize
    visit('/')
  end
  
  Given(/^acceder al enlace "([^"]*)"$/) do |linkText|
    click_link(linkText)
  end
  
  Given(/^presionar la imagen de boton "Back to Home"$/) do
    xpath = '/html/body/div[2]/table/tbody/tr/td[2]/table/tbody/tr[4]/td/table/tbody/tr[1]/td[2]/table/tbody/tr[2]/td/a'
    find(:xpath, xpath).click
  end