
Scenario: Sign Up
Given I am on the main application page
When I initialize the STORY variable `testUserEmail` with value `#{generate(Name.firstName)}`
When I initialize the STORY variable `testUserEmail` with value `#{toUpperCase(${testUserEmail})}`
When I enter `${testUserEmail}@mailinator.com` in field located `By.xpath(//body/div[@id='BXP-APP']/main[@id='skip-target']/section[1]/div[1]/div[1]/div[2]/div[1]/div[1]/form[1]/input[1])`
When I click on element located `By.xpath(//button[contains(text(),'Sign up - it’s free')])`
When I COMPARE_AGAINST baseline with name `signup` ignoring:
|ELEMENT                  	|
|By.xpath(//*[@id="email"])	|
When I click on element located `By.xpath(//span[contains(text(),'Sign up')])`
When I wait until element located `By.xpath(//button[contains(text(),'Continue')])` appears
When I COMPARE_AGAINST baseline with name `continue` ignoring:
|ELEMENT                  			|
|By.xpath(//*[@id="banners"]/div)  	|
When I click on element located `By.xpath(//button[contains(text(),'Continue')])`
When I wait until element located `By.xpath(//button[contains(text(),'Take me to Trello')])` appears
When I COMPARE_AGAINST baseline with name `starttrello` ignoring:
|ELEMENT                  			|
|By.xpath(//*[@id="banners"]/div)	|
When I click on element located `By.xpath(//button[contains(text(),'Take me to Trello')])`

Scenario: Sign In
Given I am on a page with the URL 'https://trello.com/login'
When I enter `${testUserEmail}@mailinator.com` in field located `By.xpath(//input[@id='user'])`
When I click on element located `By.xpath(//input[@id='login'])`

Scenario: Verify email
Given I am on a page with the URL 'https://www.mailinator.com/'
When I click on element located `By.xpath(//*[@class="inbox-link"])`
When I enter `${testUserEmail}@mailinator.com` in field located `By.xpath(//input[@id='inbox_field'])`
When I click on element located `By.xpath(//*[@class="primary-btn"])`
