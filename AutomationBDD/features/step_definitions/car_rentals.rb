#Then se muestra el mensaje "Welcome, you are offered to send an inventory of models, colors and updates!"
Then('se muestra el mensaje "Welcome, you are offered to send an inventory of models, colors and updates!"') do
    expect(page).to have_content('Welcome, you are offered to send an inventory of models, colors and updates!')
end