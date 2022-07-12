
Scenario: Sign Up
Given I am on the main application page
When I initialize the STORY variable `testUserEmail` with value `#{generate(Name.firstName)}`
When I initialize the STORY variable `testUserEmail` with value `#{toUpperCase(${testUserEmail})}`
When I initialize the STORY variable `testUserPass` with value `#{generate(regexify '[a-z]{4}[A-Z]{4}')}`
When I enter `${testUserEmail}@yopmail.com` in field located `By.cssSelector(.HlPFP > .UiEmailSignupstyles__InputEmail-sc-9nggyw-1)`
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
When I enter `${testUserEmail}@yopmail.com` in field located `By.xpath(//input[@id='user'])`
When I click on element located `By.xpath(//input[@id='login'])`

Scenario: Verify email
Given I am on a page with the URL 'https://www.yopmail.com/'
When I enter `${testUserEmail}` in field located `By.xpath(//input[@id='login'])`
When I click on element located `By.xpath(//*[@id="refreshbut"]/button/i)`
When I click on element located `By.xpath(//*[@id="refresh"])`
When I click on element located `By.xpath(//*[contains(@href,'https://id.atlassian.com')])`
When I enter `${testUserPass}` in field located `By.xpath(//input[@id='password'])`
When I click on element located `By.xpath(//*[@id="signup-submit"]/span)`
When I wait until element located `By.xpath(//*[@id="header"])` appears

