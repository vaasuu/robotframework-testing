# Testing Robot Framework

## What Robot Framework?

Robot Framework is a generic open source automation framework. Read more at https://robotframework.org/

# Repo Contents

There are simple automation tests in two subfolders: 

- `/SwagLabs` - Automate ordering stuff from [e-commerce demo site](https://www.saucedemo.com/)
- `/ObstacleCourse` - [Tricentis Automation Obstacle Course](https://obstaclecourse.tricentis.com/)

## Installing

### Clone the repo

`git clone git@github.com:vaasuu/robotframework-testing.git`

### cd into repo

`cd robotframework-testing`

### Create a virtual environment

`python3 -m venv .venv`

### Activate python virtual environment

`source .venv/bin/activate` or `source .venv/Scripts/activate`

### Install the requirements

`pip3 install -r requirements.txt`

### Install Chrome WebDriver

`webdrivermanager chrome`

## Running Robot Framework tests

`robot obstacle_tests.robot`
