#Then se muestra el mensaje "successful changes!"
Then('se muestra el mensaje "successful changes!"') do
    expect(page).to have_content('successful changes!')
end