from setuptools import setup

setup(name='gciso',
    version='0.1',
    description='Library to read/write GameCube .iso files.',
    url='https://github.com/pfirsich/gciso',
    author='Joel Schumacher',
    author_email='',
    license='MIT',
    packages=['gciso'],
    install_requires=[],
    entry_points = {
        'console_scripts': ['gciso=gciso:main'],
    },
    zip_safe=True)
