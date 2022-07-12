Scenario: Composite step
Given I am on the main application page
When I initialize the STORY variable `testUserEmail` with value `#{generate(regexify '[a-z]{3}[A-Z]{2}')}`
When I enter `${testUserEmail}@yopmail.com` in field located `By.cssSelector(.HlPFP > .UiEmailSignupstyles__InputEmail-sc-9nggyw-1)`
When I sign up as a new user
When I find >= '1' elements by By.xpath(//*[contains(text(),"Create")]) and for each element do
step
When I click on element located `By.xpath(//*[contains(text(),"Create"))`


