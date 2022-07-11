Lifecycle:
Examples:
|testUserEmail|
|#{generate(regexify '[a-z]{3}[A-Z]{2}')}|
|testUser896|
|#{capitalize(#{generate(Name.FirstName)}))|

Scenario: Sign Up
Given I am on the main application page
When I enter `<testUserEmail>` in field located `By.xpath(//body/div[@id='BXP-APP']/main[@id='skip-target']/section[1]/div[1]/div[1]/div[2]/div[1]/div[1]/form[1]/input[1])`
When I add `@mailinator.com` to field located `By.xpath(//body/div[@id='BXP-APP']/main[@id='skip-target']/section[1]/div[1]/div[1]/div[2]/div[1]/div[1]/form[1]/input[1])`
When I click on element located `By.xpath(//button[contains(text(),'Sign up - it’s free')])`
When I click on element located `By.xpath(//span[contains(text(),'Sign up')])`
When I wait until element located `By.xpath(//button[contains(text(),'Continue')])` appears
When I click on element located `By.xpath(//button[contains(text(),'Continue')])`
When I click on element located `By.xpath(//button[contains(text(),'Take me to Trello')])`
Then element located `By.xpath(//*[@id="content"])` exists for `PT5S` duration

Scenario: Gets data for trello board creation 
Given I am on a page with the URL 'https://trello.com/app-key'
When I click on element located `By.xpath(//*[@id="accept-developer-agreement"])`
When I click on element located `By.xpath(//button[contains(text(),'Show API Key')])`
When I change context to element located `By.id(key)`
When I save text of context element to STORY variable `<api_key>`
When I click on element located `By.xpath(//a[contains(text(),'Token')])`
When I switch to window with title that contains `Authorize`
When I wait until state of element located `By.xpath(//*[@id="approveButton"])` is ENABLED

When I click on element located `By.xpath(//*[@id="approveButton"])`
When I change context to element located `By.xpath(//pre)`
When I save text of context element to STORY variable `<api_token>`

Scenario: Trello board creation
Given request body: {
{"defaultLists":true,
"token":"${api_token}",
"name": "My board"
}
When I set request headers:
|name   |value              |
|accept	|application/json	|

When I send HTTP POST to the relative URL '/1/boards/'
Then the response code is equal to '200'







