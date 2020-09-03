# Simple Web app for CI/CD pipeline

### Introduction to Flask
---

Flask is a lightweight, micro web development framework for Python. Compared to the higher-level frameworks, it’s much more flexible and, best of all, it doesn’t get in your way as you’re building out your web site. You can add complexity as your application grows. It’s great for beginners who want to better understand the shortcuts that larger, high-level web frameworks employ.

This repository also utilises a navbar from Bootstrap which I inherit with extends to make it available throughout the website

### Travis CI [![Build Status](https://travis-ci.org/LaminaSA/CI-CD_WebApp.svg?branch=master)](https://travis-ci.org/LaminaSA/CI-CD_WebApp)
---


Travis CI is a continuous integration service used to build and test projects hosted on version control repositories (github in this case). I chose to use Travis CI to run my integration tests on this project because of its ease of use.

All I needed to do to trigger a CI build was:

1) Create a .travis.yml file in the rood directory of my project
2) Provision the file with the instructions need to run my tests: 
    ```yaml
    os:
      - linux
    
    dist: xenial
    
    language: python
    
    python:
      - "3.8"
    html:
      - "5"
    
    install:
      - pip install flask
    
    
    script:
     - python -m pytest -v
    
    ``` 
3) ``git add .``, ``git commit``, ``git push``
4) Once the project with the yml file is pushed to git, a build is triggered, the relevant branch is pulled, the app is built and tests are run. Travis also emails me the results of my build.


 
please work?!?!
