#Then se muestra el mensaje "Welcome, your cruise has already been confirmed on the day and time. To travel!"
Then('se muestra el mensaje "Welcome, your cruise has already been confirmed on the day and time. To travel!"') do
    expect(page).to have_content('Welcome, your cruise has already been confirmed on the day and time. To travel!')
end