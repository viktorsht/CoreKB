import 'package:flutter/material.dart';

import 'core_controller.dart';

abstract class CoreControllerNotifier<T> extends ChangeNotifier implements CoreController<T> {
  
  T _state;

  CoreControllerNotifier(this._state);

  @override
  T get state => _state;

  @override
  void setState(T state) {
    _state = state;
    notifyListeners();
  }

  @override
  CoreControllerDispose connect(void Function(T) listener) {
    void listener0() => listener(state);

    addListener(listener0);
    return () => removeListener(listener0);
  }
}