@manager @chat
Feature: ManagerChat
	In order to keep in touch with clients 
	As a Manager
	I want to have a personal chat with clients 

@p1  @manager
Scenario: Display of the offline client indicator on the "Manager application"
	Given Client is exists and created 
	And Manager is exists
	And Client is offline
	And Customer list page is open
    And Chat turns on by Admin
	When I click on the desired client
	Then Successfully display of the offline client indicato

	@p1  @manager
Scenario: Correspondence history with theclientis stored on the "Manager application"
	Given Client is exists and created 
	And Manager is exists
	And "Manager application" is open
	And Customer list page is open
	And Chat turns on by Admin
	When I click on the desired client
	And I sending a message a client
	And I close  the "Manager application"
	And I opent  the "Manager application" and chat with the  client
	Then Correspondence history saved successfulled

	@p1  @manager
Scenario: Notifications about a new message with a client come instantly and are displayed in a pop-up window with a client number
	Given Client is exists and created 
	And Manager is exists
	And Manager is online
	And "Manager application" is open
	And Chat turns on by Admin
	When Client sending a message a Manager
	Then Notifications about a new message with a client

	@p1 @manager
Scenario: It is possible to send message to Client at chat when Client is offline
	Given Client is exists and created 
	And Manager is exists
	And  Client is online
	And "Manager application" is open
	And Page with list of Clients opens
	And Chat turns on by Admin
	When I open  chat with Client
	And I send message 'Hello, Client' at  chat with Client
	Then Managers message sent
	And Manager see sent own message 'Hello, Manager'

	@p1 @smoke_case
Scenario:  It is possible to Manager to keep in touch with Client at Personal Chat
	Given Managers App exists
	And Clients App exists
	And Personal Chat turns off by Admin
	And Manager exists and authorizes at "Managers application"
	And Client exists and authorizes at "Clients application"
	And Client sends message to Manager 'Hello, Manager'
	When I click on Clients number in pop-up notification from Clients message
	And I send message to Client 'Hello, Client'
	And I close chat with Client
	And I open page with list of Clients
	And I open  chat with Client
	Then The chatting history with Client saves
	And Manager sees message from Client 'Hello, Manager'
	And Manager see sent own message 'Hello, Client'

	@p1  @manager
Scenario: When you click on the line with the client, a chat opens
	Given Client is exists and created 
	And Manager is exists
	And Manager is online
	And "Manager application" is open
	And Notifications about a new message with a client
	When I click on the line with the client
	Then Successfully chat opens with a client

	@p2 @manager
Scenario: It is impossible to open  Chat with Client when  Chat turns off by Admin
	Given Client is exists and created
	And Manager is created
	And Manager is online
	And Personal Chat turns off by Admin
	And  "Manager application" is open 
	When I open page with list of Clients
	Then The Error page '404 Page Not Found' opens
