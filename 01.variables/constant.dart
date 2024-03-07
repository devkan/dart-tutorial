void main(){
  const name = "Dart";
  name = "Flutter"; // Error: Constant variables can't be assigned a value.
  // 값을 변경할수 없어서 final과 비슷해 보인다. 여기서는 final처럼 작동한다.
  // 하지만 더 중요한거 const는 compile-time에 알고 있어야 하는 값이어야 한다는 것이다.

  const String apiKey = "123456789";
  // 이렇게 지정하면 컴파일때 값이 정해지게 된다. 즉, 앱스토어 올라가기전에 그 값이 결정이 된다는 것이다.
  // 앱에 올리기 전에 확실히 지정해야 하는 값은 이때 지정해서 변경이 되지 않도록 보호하려는 것 같음.

  const apiKey2 = getApiKey(); // Error: Constant variables must be initialized with a constant value.
  late const apiKey3; // Error: The constant 'apiKey3' must be initialized.
  // 이처럼 사용이 불가능한다. 이럴 경우에는 var, final을 사용해야 한다.
}
/*
dart의 constant는 javascript, typescript의 const와 다르다. 오히려 final과 비슷하다.
dart에서 const는 compile-time constant이다. 즉, 실행 전에 이미 값이 정해져 있어야 한다.
constant는 1.메모리 효율성을 높이고, 2.런타임 오버헤드를 줄이기 위해서이다.
헤깔리지 말자.
*/