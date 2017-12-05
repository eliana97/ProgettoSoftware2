Then("I should see the bill in the list") do
  bill = Bill.last
  expect(page).to have_content(bill.title)
end

When("I fill in the form with an invalid date") do
  fill_in "Date", with: "ciao"
end
