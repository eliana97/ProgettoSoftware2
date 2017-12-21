Then("I shouldn't see the activity in the list") do
  expect(page).to have_no_content("Prova")
end

And("there is an activity with description {string}") do |string|
  @activity = FactoryBot.create(:activity, description: string, user: @user)
end
