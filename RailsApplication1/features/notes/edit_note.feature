Feature: Edit Note
  In order to have up to date note
  As a visitor
  I want to edit existing note

  Background:
    Given I have the following note:
      | title         | content               |
      | existing note | lorem ipsum dolololol |

  Scenario: Going to edit note page
    Given I am on the note page with title: "existing note"
    When I follow "Edit"
    Then I should be on the edit note page with title: "existing note"

  Scenario: Editing a note
    Given I am on the edit note page with title: "existing note"
    When I fill in "Title" with "updated note"
    And I fill in "Content" with "the new content"
    And I press "Submit"
    Then I should be on the note page with title: "updated note"
    And I should see "the new content"