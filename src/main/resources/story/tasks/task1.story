
Lifecycle:
Examples:
|testUserEmail|
|#{generate(Name.firstName)}|
|testUser113|
|#{generate(regexify '[a-z]{3}[A-Z]{2}')}|

Scenario: Sign Up
Given I am on the main application page
When I enter `<testUserEmail>` in field located `By.xpath(//body/div[@id='BXP-APP']/main[@id='skip-target']/section[1]/div[1]/div[1]/div[2]/div[1]/div[1]/form[1]/input[1])`
When I add `@mailinator.com` to field located `By.xpath(//body/div[@id='BXP-APP']/main[@id='skip-target']/section[1]/div[1]/div[1]/div[2]/div[1]/div[1]/form[1]/input[1])`
When I sign up as a new user


Scenario: Trello board creation
//Given request body: {
// "url": 'https://api.trello.com/1/boards/?name={name}&key=APIKey&token=APIToken' 
//}
//When I send HTTP POST to the relative URL '/create'
//Then the response code is equal to '200'




