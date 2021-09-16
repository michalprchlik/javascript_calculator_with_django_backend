# Calculator

## Overview

Very simple calculator written in Javascript/JQuery. HTML/CSS flex frames used for styling the calculator. Project contains backend REST API written in python3 with django framework. Project is able to run localy or in container

## Preview

![calculator.png](calculator.png)

## Installation

You have 2 options to run the project. Both are already prepared in `Makefile`. 

- To run project localy, execute `make run_localy`. You can access calculator with URL `http://localhost:8000/`

- To run project in container, execute `make run_in_container`. You can access calculator with URL `http://localhost:8000/`

## How to work with calculator

Open `index.html` file in your browser. Use mouse to click buttons. Your actions will be displayed in upper part of screen. Upper right part of screen contains history of your calculations. 

## Openshift

If you want this application to be deployed openshift run below command

```
oc new-app python:3.8-ubi8~https://github.com/michalprchlik/javascript_calculator_with_django_backend.git
```

Get URL to your deployed application on openshift

```
oc expose service javascriptcalculatorwithdjangobackend
oc get routes
```