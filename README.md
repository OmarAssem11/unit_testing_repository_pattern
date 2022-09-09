# Unit Testing

## What is testing

* Ensuring that the app does exactly what it should
* Verifying that the actual software product matches expected requirements

## Why do we need testing

* To discover defects before the delivery to the client
* To reduce flaws in the component or system
* To increase the overall quality of the software

## Main types of testing

* Manual
* Automated

## Tests in flutter

* Unit test
* Widget test
* Integration test

## Unit test

* For all code beside the UI widgets
* One set of unit tests usually tests a single a single function, method or class
* Easier to write and runs faster

## Widget test

* For testing a single widget
* Runs on a simulated UI environment
* Involves multiple classes and requires a test environment that provides the appropriate widget lifecycle context

## Integration test

* For testing the complete app or large parts of the app from the user prespective
* To verify that all the widgets and services being tested work together as expected
* Can be used  to verify your app’s performance
* Runs on an emulator, simulator or a real device
* Hard to write and runs slower

## AAA pattern

* Arrange(setup everything that is going to be used in the test)
* Act(call the specific method or make the change that we want to test)
* Assert(compare expected value with actual value)

# Repository Pattern

## What is design pattern

* General repeatable solutions to a commonly occurring problem in software design

## What is repository pattern

* All data in a system is managed in a central repository that is accessible to all system components
* Components do not interact directly
* Repository is a class or component that encapsulate the logic required to access data sources
* It provides an abstraction of data, so that your application can depend on a simple abstraction not a concrete implementation

## Advantages of repository pattern

* Decouple the business logic and the data access layers in your application
* Increase testability
* Isolate the impact of change
* Components can be independent
