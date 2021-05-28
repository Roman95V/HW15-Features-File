@login 
Feature: Login
	In order to login in "Client application"
	As a client of "Client application"
	I want to be logged in "Client application"

@р1 
Scenario: It is possible to login in "Client application" with valid data
	Given Client is exists  
	And Sign in page is opened
	When I input email of created client in email field
	And I input password of created client in password field
	And I click Log in button
	Then Successfully logged in "Client application" as created client

@р2 
Scenario: The client cannot enter the page in "Client application" with invalid data
	Given Client is exists 
	And Sign in page is opened
	When I input an invalid email for the client in the email field
	And I input an invalid password for the client in password field
	And I click Log in button
	Then Unsuccessfuly login in "Client application" with invalid data

