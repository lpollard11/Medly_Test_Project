# Medly_Test_Project
This app is a small demo for the purpose of demonstrating my understanding of iOS Development best practices. Here is an overview of how the code is structured.

## Installation
Please run the project on Xcode 12.4.

## MVVM Architecture
The app uses an MVVM architecture. View Models are responsible for loading data from Services and storing the current state of the view. View Controllers are repsonsible for drawing the view according to the state contained in the ViewModel.

## Services
Each feature has its own Service to make API calls.

## Dependency Injection
The app uses Dependency Injection to avoid tight coupling. All dependencies are defined as protocols, allowing mock implementations to be injected for the purpose of unit testing. The dependency injection is handled by Wireframes, which creates the MVVM stacks and returns the UI components.
