#Then se muestra el mensaje "Hello, contact of the operator who could help you: 12345678"
Then('se muestra el mensaje "Hello, contact of the operator who could help you: 12345678"') do
    expect(page).to have_content('Hello, contact of the operator who could help you: 12345678')
end