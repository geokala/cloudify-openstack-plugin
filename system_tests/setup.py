from setuptools import setup, find_packages

setup(
    name="cloudify_tester_openstack_plugin",
    version="0.1.0",
    package_dir={'': 'src'},
    packages=find_packages('src'),
    install_requires=[
        'cloudify_tester',
    ],
)
