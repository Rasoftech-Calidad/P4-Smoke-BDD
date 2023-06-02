#Then se muestra el mensaje "Welcome, your destination has been confirmed!"
Then('se muestra el mensaje "Welcome, your destination has been confirmed!"') do
    expect(page).to have_content('Welcome, your destination has been confirmed!')
end