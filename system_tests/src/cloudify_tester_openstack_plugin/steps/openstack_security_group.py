from behave import step


@step('I have opened the influxdb port on the openstack manager security '
      'group')
def dosomething(context):
    import time
    time.sleep(10)
