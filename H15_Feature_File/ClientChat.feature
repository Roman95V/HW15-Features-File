@CustomerChat @Client @Chat
Feature: ClientChat
	In order to keep in touch with my manager
	As a Client
	I want to have a personal chat with manager

@p1  @client
Scenario: It is possible to open a chat with a Manager on the "Client application"
	Given Client is created
	And Manager is created
	And "Client application" is open
	And Chat turns on by Admin
	When I click chat with the manager (icon is in the lower right corner)
	Then Chat with manager successfully opened

@p1  @client
Scenario: It is possible to sending a message a Manager on the "Client application"
	Given Client is created
	And Manager is created
	And Manager is offline
	And "Client application" is open
	And Chat turns on by Admin
	When I click chat with the manager (icon is in the lower right corner)
	And I sending a message a Manager
	Then Message sent successfully

@p1  @client
Scenario: Display of the online manager indicator on the "Client application"
	Given Client is created
	And Manager is created
	And Manager is online
	And "Client application" is open
	And Chat turns on by Admin
	When I click chat with the manager (icon is in the lower right corner)
	Then Successfully display of the online manager indicato


	@p1  @client
Scenario: Correspondence history with the manager is stored on the "Client application"
	Given Client is created
	And Manager is created
	And "Client application" is open
	And Chat turns on by Admin
	When I click chat with the manager (icon is in the lower right corner)
	And I sending a message a Manager
	And I close  the "Client application"
	And I opent  the "Client application" and chat with the manager
	Then Correspondence history saved successfulled

	@p1  @smoke_case @client
Scenario: It is possible to Client to keep in touch with Manager at Personal Chat
	Given Client is created
	And Manager is created and offline
	And Client  authorizes at "Client application"
	And "Client application" is open
	And Chat turns on by Admin
	When I open  chat with Manager
	And I send message 'Hello, Manager' at Personal chat with Manager
	And I close  chat with Manager
	And Manager authorizes at "Manager application" and sends answer to Client 'Hello, Client'
	And I open Personal chat with Manager
	Then The message from Manager 'Hello, Client' displays
	And The chatting history with Manager saves
	And Client see own message 'Hello, Manager'

	@p2 @client
Scenario: It is impossible to open Chat with Manager when Chat turns off by Admin
	Given "Client application" exists
	And "Manager application" exists
	And Chat turns on by Admin
	And Client exists and authorizes at "Client application"
	And Manager is created
	And "Client application" is open
	Then The icon for chat with Manager isn't display

	