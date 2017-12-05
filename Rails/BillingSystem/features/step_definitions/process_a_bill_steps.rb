When("I have created the bill") do
  visit bill_path(@bill)
end

Then("I should see the total cost as sum of all activities from the last bill") do
  pending # Write code here that turns the phrase above into concrete actions
end
