abstract class CoreController<T>{
  T get state;
  void setState(T state);
  CoreControllerDispose connect(void Function(T) listener);
  void dispose();
}

typedef CoreControllerDispose = void Function();