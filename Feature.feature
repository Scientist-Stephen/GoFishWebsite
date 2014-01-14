Feature: Identify Player

Scenario: Successful player identification
	Given a first time user
	When they identify themselves by name
	Then the're successfully associated with a new game and redirected to the game page
