@ClientList
Feature: ClientListPage
	In order to select the client with whom you want to communicate           
	As a Manager
	I want to have a page with a list of users  

@p1 @smoke_case
Scenario: It is possible to open a chat with a client on the page with a list of clients
	Given Clients is exists and cre
	And Manager is created
	And Customer list page is open
	When I click on the desired client
	Then Chat with client successfully opened