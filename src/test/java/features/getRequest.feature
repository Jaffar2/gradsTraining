Feature: test get endPoints

 Scenario: test get list users with JSON Data
    Given url 'https://reqres.in/api/users?page=2'
    When method GET
    Then status 200
    And print response
    And match response.data[0].email == 'michael.lawson@reqres.in'

  Scenario: test get single user with JSON Data
    Given url 'https://reqres.in/api/users/2'
    When method GET
    Then status 200
    And print response
    And match response.data[0].first_name == 'Janet'

  Scenario: test get single user Not found with JSON Data
    Given url 'https://reqres.in/api/users/23'
    When method POST
    Then status 404
    And print response
