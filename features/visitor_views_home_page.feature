Feature: Visitor visits home page
  In order to expose local technologist to businesses
	As a visitor
	I want to see some local techies


Scenario: A techie is in the database
  Given a user exists with first name "Dylan" and last name "Turpin"
	When I visit the home page
	Then I should see "Dylan Turpin"
