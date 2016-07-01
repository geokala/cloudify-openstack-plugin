from setuptools import setup, find_packages


# We don't depend on cloudify-tester because otherwise a pip install --upgrade
# will cause failures since it's not on pip
setup(
    name="cloudify_tester_openstack_plugin",
    version="0.1.0",
    package_dir={'': 'src'},
    packages=find_packages('src'),
)
