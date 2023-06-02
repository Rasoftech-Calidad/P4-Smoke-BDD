#Then se muestra el mensaje "Waiting for results!"
Then('se muestra el mensaje "Waiting for results!"') do
    expect(page).to have_content('Waiting for results!')
end