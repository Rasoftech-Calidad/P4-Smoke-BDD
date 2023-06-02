#Then se muestra el mensaje "Hello, thank you for submitting your corresponding claim. We will be attentive to the request!"
Then('se muestra el mensaje "Hello, thank you for submitting your corresponding claim. We will be attentive to the request!"') do
    expect(page).to have_content('Hello, thank you for submitting your corresponding claim. We will be attentive to the request!')
end