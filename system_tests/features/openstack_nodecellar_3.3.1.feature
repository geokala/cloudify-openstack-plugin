Feature: Testing nodecellar on an openstack manager
  Background:
    Given I have installed Cloudify CLI version 3.3.1 from github
      And I have a manager created from openstack-manager-blueprint.yaml from a checkout of 3.3.1-openstack-dns on https://github.com/geokala/cloudify-manager-blueprints.git with inputs from template openstack-bootstrap-inputs-3.3.1
      And I have a deployment called nodecellar from openstack-nova-net-blueprint.yaml from a checkout of 3.3.1 on https://github.com/cloudify-cosmo/cloudify-nodecellar-example.git with inputs from template openstack-nodecellar-inputs

  @openstack
  @3.3.1
  @nodecellar
  @check_url
  Scenario: Check nodecellar is up
    When I try to access the nodecellar URL
    Then I find the nodecellar page contains the word nodecellar

  @openstack
  @3.3.1
  @nodecellar
  Scenario: I run all of the tests even if one of them fails
     Then I fail a step

  @openstack
  @3.3.1
  @nodecellar
  @check_monitoring
  Scenario: Check nodecellar has monitoring data on the manager
   Given I have opened the influxdb port on the manager security group
    When I try to get monitoring data for the nodecellar deployment
    Then I see some monitoring data
