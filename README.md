# country_select_app

A simplified Country selector application.

## Getting Started

This Flutter application allows user to select country and states for the selected country. 
The app consists of one screen with two dropdown menus for the country and of its' states.

The code is written in Dart using [BLoc](https://pub.dev/packages/flutter_bloc) pattern and Clean Architecture.

This project is followed Test Driven Development (TDD) approach, but still needs more test cases to be added.
flutter_test library is used for Unit testing and [Mocktail](https://pub.dev/packages/mocktail) for
mocking objects. 

Additionally used next libraries:
[Dio](https://pub.dev/packages/dio) - for networking requests
[Freezed](https://pub.dev/packages/freezed) - for code-generation of immutable classes
[GetIt](https://pub.dev/packages/get_it) - for Dependency Injection

To run the application use the latest versions of Dart and Flutter SDK, plug in the device and run next command on the terminal:

flutter run

Notes: If you want to run on iOS real device, you should add your Signing certificates and profiles in XCode.


Screen recordings:

https://github.com/rzhaxibayev/country_select_app/assets/9423015/ac9497a1-0ed6-405f-9bdf-803da83f21e4


