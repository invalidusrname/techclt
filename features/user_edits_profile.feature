Feature: User edits profile
  In order to keep my information up to date
	As a user
	I want to be able to change my profile

	Scenario: User logs in and edits profile
		Given I am a logged in user
		Then I should see "Logout"
		Then I should not see "Access Denied"
		When I change my firstname to "Smithy"
		Then my name should be updated to "Smithy"
