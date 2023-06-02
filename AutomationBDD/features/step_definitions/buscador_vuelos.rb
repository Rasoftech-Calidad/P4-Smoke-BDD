#When presionar la imagen de boton "Continue->"
When(/^presionar la imagen de boton "Continue->"$/) do
    xpath = '/html/body/div[2]/table/tbody/tr/td[2]/table/tbody/tr[4]/td/table/tbody/tr/td[2]/table/tbody/tr[5]/td/form/table/tbody/tr[14]/td/input'
    find(:xpath, xpath).click
end

    #Then muestra el mensaje "After flight finder - No Seats Avaialble"
    And('muestra el mensaje "After flight finder - No Seats Avaialble"') do
        expect(page).to have_content('After flight finder - No Seats Avaialble')
    end

    #Then presionar la imagen de boton "BACK TO HOME"
    And(/^presionar la imagen de boton "BACK TO HOME"$/) do
        xpath = '/html/body/div[2]/table/tbody/tr/td[2]/table/tbody/tr[4]/td/table/tbody/tr[1]/td[2]/table/tbody/tr[2]/td/a/img'
        find(:xpath, xpath).click
    end