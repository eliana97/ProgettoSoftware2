Then("I should see the customer in the list") do
  customer = Customer.last
  expect(page).to have_content(customer.title)
end

When("I fill in the form with an invalid business name") do
  fill_in "Business Name", with: ""
end
