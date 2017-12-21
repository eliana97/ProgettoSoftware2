Then("I should see the bill in the list") do
  visit bills_path
  expect(page).to have_content("20")
end

And("I fill in the bill form with valid data") do
  fill_in 'Discount', with: "20"
end

When("I fill in the form with an invalid date") do
  fill_in "Date", with: "ciao"
end
