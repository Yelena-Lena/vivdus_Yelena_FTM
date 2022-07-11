Scenario: Composite step
Given I am on the main application page
When I initialize the STORY variable `testUserEmail` with value `#{generate(regexify '[a-z]{3}[A-Z]{2}')}`
When I enter `${testUserEmail}@yopmail.com` in field located `By.xpath(//body/div[@id='BXP-APP']/main[@id='skip-target']/section[1]/div[1]/div[1]/div[2]/div[1]/div[1]/form[1]/input[1])`
When I sign up as a new user
When I find >= '1' elements by By.xpath(//*[contains(text(),"Create")]) and for each element do
step
When I click on element located `By.xpath(//*[contains(text(),"Create"))`


