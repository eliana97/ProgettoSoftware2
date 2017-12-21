And("there is a customer") do
  @customer = FactoryBot.create(:customer, user: @user)
end

Given("I am viewing the details of a customer") do
  visit customer_path(@customer)
end

When("I change business_name to {string}") do |string|
  fill_in 'Business name', with: string
end

Then("I am on the page of the customer") do
  visit customers_path
end

Then("the business_name of the customer is {string}") do |string|
  expect(page).to have_content(string)
end
