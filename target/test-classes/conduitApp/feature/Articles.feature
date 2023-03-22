Feature:Articles

Background: Define URL
Given url 'https://conduit.productionready.io/api/'

Scenario: login in to the application
Given path 'users/login'
And request {"user": {"email": "karate101010@test.com","password": "karate777"}}
When method Post
Then status 200
* Define token = response.user.token


Scenario: to create an article

Given header Authorization = 'Token' + token 
Given path 'articles'
And request {"article": {"tagList": [],"title": "hunnbbnjnjnj","description": "nothing","body": "bssgsgsygfsyghussyu"}}
When method Post
Then status 200 