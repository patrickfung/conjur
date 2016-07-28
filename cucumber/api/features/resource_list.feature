@logged-in
Feature: Listing resources

  Background:
    Given a resource

  Scenario: Resource list includes a new resource
    When I list all resources
    Then the resource list should have the new resource

  Scenario: Resource list, filtered by kind, includes a new resource
    When I list all resources whose kind is "test-resource"
    Then the resource list should have the new resource

  Scenario: Resource list, filtered by a different kind, does not include the new resource
    When I list all resources whose kind is "uncreated-resource-kind"
    Then the resource list should not have the new resource