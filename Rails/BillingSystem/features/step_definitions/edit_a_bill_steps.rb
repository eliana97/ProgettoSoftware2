Given("there is a bill") do
  @bill = FactoryBot.create(:bill, customer: @customer, user: @user)
end

Given("there is an activity called {string}") do |string|
  @activity = FactoryBot.create(:activity, description: string, customer: @customer, user: @user)
end

Given("I am viewing the details of a bill") do
  visit bill_path(@bill)
end

When("I change date to {string}") do |string|
  fill_in 'Date', with: string
end

Then("I should see {string} in the list of bills") do |string|
  expect(page).to have_content(string)
end
