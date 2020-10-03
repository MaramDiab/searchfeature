Feature: Search about suitable home
  
Background: The System has a repository of homes with their specifications (type-material-placement-pets-amenties-price-area-bedrooms-bathrooms-leaselength)
Given  these homes are contained in the system
                |HOUSE_WOOD_VILLAGE_NO_GARAGEPARKING_FIREPLACE_ELEVATOR|510_150_3_2_6|
                |APARTMENT_BRICK_CITY_NO_ELEVATOR|230_120_4_2_12|
  Scenario: Search home by Placement
  When I search about home by "CITY"
  Then A list of homes that matches the  type specification should be returned and printed on the console
    When I search about home by "VILLAGE"
  Then A list of homes that matches the  type specification should be returned and printed on the console    
 
 
     Scenario: Search home by material
    When I search about home by "BRICK"
    Then A list of homes that matches the material specification should be returned and printed on the console
    When I search about home by "WOOD"
    Then A list of homes that matches the material specification should be returned and printed on the console
    When I search about home by "STONE"
    Then A list of homes that matches the material specification should be returned and printed on the console
    
    Scenario: Search about home with less than a specific price
    When I search about home with price less than 400
    Then A list of homes that matches the price specification should be returned and printed on the console
    
     Scenario: Search home by range of prices
     When I search about home with range of price 500
    Then A list of homes that matches the range of prices specification should be returned and printed on the console  
      
     Scenario: Search home with less than a specific area
     When I search about home with area less than 200
    Then A list of homes that matches the area specification should be returned and printed on the console  
    
     Scenario: Search home by range of areas
     When I search about home with range of area 300
    Then A list of homes that matches the range of areas specification should be returned and printed on the console  
    
     Scenario: Search home by Number of bedrooms
     When I search about home with number of bedrooms less than or equal 5
     Then A list of homes that matches the  number of bedrooms specification should be returned and printed on the console
    
    
     Scenario: Search home by Number of bathrooms
     When I search about home with number of bathrooms less than or equal 3
     Then A list of homes that matches the  number of bathrooms specification should be returned and printed on the console
     
     Scenario: Search home by allow pets
    When I search about home by "YES"
    Then A list of homes that matches the allow pets specification should be returned and printed on the console          
      When I search about home by "no"
    Then A list of homes that matches that dont allow pets specification should be returned and printed on the console          
                                  
      Scenario: Search home by lease length
     When I search about home by "LONG TERM"
     Then A list of homes that matches the LONG length specification should be returned and printed on the console
      When I search about home by "SHORT TERM"
     Then A list of homes that matches the least length specification should be returned and printed on the console
     
     
     Scenario: Search home by Amenities
     When I search about home by "AIRCONDITION"
     Then A list of homes that matches the Amenities specification should be returned and printed on the console
          When I search about home by "ELAVATOR"
     Then A list of homes that matches the Amenities specification should be returned and printed on the console
          When I search about home by "FIREPLACE "
           Then A list of homes that matches the Amenities specification should be returned and printed on the console 
   When I search about home by "BALACONY"
     Then A list of homes that matches the Amenities specification should be returned and printed on the console
     When I search about home by "GARAGE PARKING"
     Then A list of homes that matches the Amenities specification should be returned and printed on the console
     When I search about home by "SWIMMING POOL"
     Then A list of homes that matches the Amenities specification should be returned and printed on the console
     Scenario: Search home by combination between type and material
      When I search about home by "HOUSE"
      And I search about home by "BALACONY"
      Then A list of homes that matches the type and Amenities specification should be returned and printed on the console