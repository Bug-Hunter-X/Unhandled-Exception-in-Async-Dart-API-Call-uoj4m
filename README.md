# Unhandled Exception in Async Dart API Call

This repository demonstrates an uncommon error scenario in Dart asynchronous programming. The primary issue lies in properly handling exceptions that occur within asynchronous operations, specifically those involving network requests. While a `try-catch` block is used, understanding how and when to `rethrow` exceptions is crucial for robust error management.

## The Problem

The provided `bug.dart` file includes a function `fetchData()` which attempts to fetch data from a remote API.  A naive approach might simply catch the exception and handle it locally.  However, this prevents higher-level error handling mechanisms from reacting to the error, potentially leading to silent failures or unexpected behavior.

## The Solution

The solution, presented in `bugSolution.dart`, uses a `rethrow` statement within the `catch` block. This allows the exception to propagate up the call stack, giving other parts of your application a chance to intercept and manage it appropriately. This is especially useful in larger applications with more complex error handling workflows.  Adding proper logging or more specific exception handling in the calling function can enhance resilience.

## How to Run

1. Clone this repository.
2. Open the project in your preferred Dart IDE.
3. Run the `bug.dart` and `bugSolution.dart` files to observe the different exception handling behaviors.