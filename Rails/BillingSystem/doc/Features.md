# Features

### Activity
#### Feature: insert activity
Scenario: create a valid activity
&nbsp;&nbsp; Given I am an user
&nbsp;&nbsp; When I click on new activity
&nbsp;&nbsp; And I fill in the form with valid data
&nbsp;&nbsp; Then I should see the activity in the list

Scenario: create a invalid activity
&nbsp;&nbsp; Given I am an user
&nbsp;&nbsp; When I click on new activity
&nbsp;&nbsp; And I fill in the form with an invalid customer
&nbsp;&nbsp; Then I should see a error message

#### Feature: edit activity
Scenario: edit an activity
&nbsp;&nbsp; Given I am an user
&nbsp;&nbsp; When I click on edit activity
&nbsp;&nbsp; And I change what I want in the form
&nbsp;&nbsp; Then I should see the edited activity in the list

Scenario: edit an activity
&nbsp;&nbsp; Given I am an user
&nbsp;&nbsp; When I click on edit activity
&nbsp;&nbsp; And I fill in the form with an invalid date
&nbsp;&nbsp; Then I should see a error message

#### Feature: delete customer
Scenario: delete an activity
&nbsp;&nbsp; Given I am an user
&nbsp;&nbsp; When I click on delete activity
&nbsp;&nbsp; Then I should see a message of deletion and no more the activity in the list

### Customer
#### Feature: insert customer
Scenario: create a valid customer
&nbsp;&nbsp; Given I am an user
&nbsp;&nbsp; When I click on new customer
&nbsp;&nbsp; And I fill in the form with valid data
&nbsp;&nbsp; Then I should see the customer in the list

Scenario: create an invalid customer
&nbsp;&nbsp; Given I am an user
&nbsp;&nbsp; When I click on new customer
&nbsp;&nbsp; And I fill in the form with an invalid business name
&nbsp;&nbsp; Then I should see a error message

#### Feature: edit customer
Scenario: edit a customer
&nbsp;&nbsp; Given I am an user
&nbsp;&nbsp; When I click on edit customer
&nbsp;&nbsp; And I change what I want in the form
&nbsp;&nbsp; Then I should see the edited customer in the list

#### Feature: delete customer
Scenario: delete a customer
&nbsp;&nbsp; Given I am an user
&nbsp;&nbsp; When I click on delete customer
&nbsp;&nbsp; Then I should see a message of deletion and no more the customer in the list

### Select Customer in Activity Form
#### Feature: delete customer
Scenario: delete a customer
&nbsp;&nbsp; Given I am an user
&nbsp;&nbsp; When I edit or create an activity
&nbsp;&nbsp; And I select a customer from a drop down list
&nbsp;&nbsp; Then I should see the customer in the created or updated activity

### Bill
#### Feature: create bill
Scenario: create a valid bill
&nbsp;&nbsp; Given I am an user
&nbsp;&nbsp; When I click on new bill
&nbsp;&nbsp; And I fill in the form with valid data
&nbsp;&nbsp; Then I should see the bill in the list with all the activities from the period linked with the selected customer 

Scenario: create an invalid bill
&nbsp;&nbsp; Given I am an user
&nbsp;&nbsp; When I click on new bill
&nbsp;&nbsp; And I fill in the form with an invalid date
&nbsp;&nbsp; Then I should see a error message

#### Feature: edit bill
Scenario: edit a bill
&nbsp;&nbsp; Given I am an user
&nbsp;&nbsp; When I click on edit bill
&nbsp;&nbsp; And I change what I want in the form
&nbsp;&nbsp; Then I should see the edited bill in the list

#### Feature: delete bill
Scenario: delete a bill
&nbsp;&nbsp; Given I am an user
&nbsp;&nbsp; When I click on delete bill
&nbsp;&nbsp; Then I should see a message of deletion and no more the bill in the list

#### Feature: Process bill
Scenario: process a bill
&nbsp;&nbsp; Given I am an user
&nbsp;&nbsp; When I have created the bill
&nbsp;&nbsp; Then I should see the total cost as sum of all activities from the last bill

#### Feature: Display bill
Scenario: dispay a bill
&nbsp;&nbsp; Given I am an user
&nbsp;&nbsp; When I have created the bill
&nbsp;&nbsp; And I want to see the bill created
&nbsp;&nbsp; Then I should be redirected to a page that show all details
