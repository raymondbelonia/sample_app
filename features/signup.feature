Feature: Sign up

	Scenario: Unsuccessful signup
		Given a user visits the home page
		And click on the sign up button
		When the user submits invalid signup information
		Then he should see an error message

	Scenario: Successful signup
		Given a user visits the home page
		And click on the sign up button
		When the user submits valid signup information
		Then he should see a signout link

