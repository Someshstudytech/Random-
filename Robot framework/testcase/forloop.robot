*** Settings ***
Library  SeleniumLibrary

*** Variables ***

@{my_list}    Item 1    Item 2    Item 3



*** Test Cases ***




   #FOR    ${animal}    IN    cat    dog
 #      Log to console   ${animal}
  # END
#in range
 #  FOR  ${i}  IN RANGE   3.14
  ##    log to console      ${i}
  # END

Example Test
    FOR    ${item}    IN    @{my_list}
      log to console                   ${item}  # Perform other actions on ${item}
    END

*** Keywords ***
