library dart_published;

class Publisher<T> {
  // constructor
  Publisher(T inputValue) {
    _instance = inputValue;
  }

  // the part that holds the value
  late T _instance;
  // processing to be performed when a value is changed
  Function listenProcess = () {};

  // getters of _instance
  T get value {
    return _instance;
  }

  // set value to _instance & execution of the configured process
  set value(T inputValue) {
    _instance = inputValue;
    listenProcess(value);
  }

  // function to set the process to be executed when the value is changed
  void sink(Function(T newValue) process) {
    listenProcess = process;
  }
}
