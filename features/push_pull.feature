Feature: RotCollector
  In order to create simple services
  As a software engineer
  I want to bind to a port and pull messages

  Scenario:
    Given I have defined RotCollector in rot_collector
    And I have bound RotCollector’s incoming handler to port 2201
    When I send the following messages to port 2201:
      | id | angle | rot_text    |
      |  1 |     5 | mjqqt btwqi |
      |  2 |    10 | rovvy gybvn |
      |  3 |    15 | vszzc kcfzr |
    Then RotCollector should have the following messages:
      | id | angle | rot_text    |
      |  1 |     5 | mjqqt btwqi |
      |  2 |    10 | rovvy gybvn |
      |  3 |    15 | vszzc kcfzr |
