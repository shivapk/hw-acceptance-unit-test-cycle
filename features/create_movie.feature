Feature: make sure create works
 
  As a concerned student
  So that I can achieve >75% test coverage
  I want to make sure create works
  
Background: movies already exist in the database

  Given the following movies exist:
  | title                   | rating | release_date |
  | Aladdin                 | G      | 25-Nov-1992  |
  | The Terminator          | R      | 26-Oct-1984  |
  | When Harry Met Sally    | R      | 21-Jul-1989  |
  | The Help                | PG-13  | 10-Aug-2011  |
  | Chocolat                | PG-13  | 5-Jan-2001   |
  | Amelie                  | R      | 25-Apr-2001  |
  | 2001: A Space Odyssey   | G      | 6-Apr-1968   |
  | The Incredibles         | PG     | 5-Nov-2004   |
  | Raiders of the Lost Ark | PG     | 12-Jun-1981  |
  | Chicken Run             | G      | 21-Jun-2000  |
  
Scenario: create a new movie
  When I am on the home page
  And I follow "Add new movie"
  And I fill in "Title" with "DuckDuckGeese"
  And I select "R" from "Rating"
  And I press "Save Changes"
  Then I should see "DuckDuckGeese was successfully created"
  And I should see "More about DuckDuckGeese"