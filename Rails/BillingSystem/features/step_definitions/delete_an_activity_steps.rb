Then("I shouldn't see the activity in the list") do
  bill = FactoryBot.create(:bill)
  bill.destroy
end
