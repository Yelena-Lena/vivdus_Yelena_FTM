Scenario: Verification
Given I am on a page with the URL 'https://www.mailinator.com/'
When I initialize the STORY variable `testUserEmail` with value `#{generate(Name.firstName)}`
When I initialize the STORY variable `testUserEmail` with value `#{toUpperCase(${testUserEmail})}`
When I click on element located `By.xpath(//header/div[1]/div[1]/div[1]/div[2]/div[1]/a[1])`
When I enter `<testUserEmail>` in field located `By.xpath(//input[@id='inbox_field'])`
When I add `@mailinator.com` to field located `By.xpath(//input[@id='inbox_field'])`
When I click on element located `By.xpath(//tbody/tr[@id='row_gerkin-1657458529-262023996']/td[2])`
When I click on element located `By.xpath(//a[contains(text(),'Verify your email')])`
Then the text 'Set up your Atlassian account' exists