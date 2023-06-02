#Then se muestra el mensaje "Welcome, your hotel was ticked at this time!"
Then('se muestra el mensaje "Welcome, your hotel was ticked at this time!"') do
    expect(page).to have_content('Welcome, your hotel was ticked at this time!')
end