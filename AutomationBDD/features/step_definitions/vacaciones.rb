#Then se muestra el mensaje "Welcome, your vacation has already been ticked at this time!""
Then('se muestra el mensaje "Welcome, your vacation has already been ticked at this time!"') do
    expect(page).to have_content('Welcome, your vacation has already been ticked at this time!')
end