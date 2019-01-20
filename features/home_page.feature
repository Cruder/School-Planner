Feature: Home Page
  In order to take note the scheduled homeworks
  As a viewer
  I want to see the home page of my app

	Scenario: View home page
  		Given I am on the home page
  		Then I should see "Devoirs"

  Scenario: View a scheduled homework on the home page
      Given I am on the home page
      And A homework "Contrôle de Docker" is scheduled to tomorrow
      Then I should see "Contrôle de Docker"
      And I should see tomorrow date
