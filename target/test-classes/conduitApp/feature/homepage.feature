
Feature: test for the homepage

Background: Define URL
    Given url 'https://conduit.productionready.io/api/'


Scenario: get all tags name 
Given path 'tags'   
When method Get    
Then status 200
And match response.tags contains ['welcome' , 'ipsum']
And match each response.tags =="#string"




 
Scenario:to get 10 Articles
Given path 'articles'
When method Get
Then status 200
And match response.articles =="#[10]"
And match response.articlesCount == 197

