Then("I should see the customer in the list") do
  visit customers_path
  expect(page).to have_content("Via Roma Trento")
end

When("I fill in the customer form with valid data") do
  fill_in 'Business name', with: "Prova"
  fill_in 'Address', with: "Via Roma Trento"
  fill_in 'Phone', with: "0461111111"
  fill_in 'Email', with: "aa.aa@aa.it"
  fill_in 'Vat number', with: "11111111111"

  click_on 'Create Customer'
end

When("I fill in the form with an invalid business name") do
  fill_in "Business name", with: ""
  click_on 'Create Customer'
end
