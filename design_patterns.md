# Flutter Design Patterns

* [State management in Flutter with Declarative UI frameworks (Google I/O 2019)](https://www.youtube.com/watch?v=d_m5csmrf7I&feature=youtu.be)
* Model View Controller pattern
* Traditional apps are build with imperative programming, but Flutter is *reactive*. Here the focus is on State Management rather than design patterns

## Provider Pattern

* Disadvantages of passing callbacks around: 
  * widgets are getting rebuilt constantly, many callbacks being passed around, etc. Very prone to error
  * Prop drilling -- need to drill through hierarchy to get access to data
* [Flutter State Management](https://flutter.dev/docs/development/data-and-backend/state-mgmt/simple): States "provide" updates to listeners
* Works based on inherited widgets. In fact it is simply a wrapper around the provider package
