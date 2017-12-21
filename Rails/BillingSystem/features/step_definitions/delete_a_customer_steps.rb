Then("I shouldn't see the customer in the list") do
  expect(page).to have_no_content("UniTn")
end

And("I confirm the popup") do
  page.driver.browser.switch_to.alert.accept
end
