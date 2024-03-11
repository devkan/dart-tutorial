String introduce(
  String name,
  int age,
  [String country = 'cuba']
) {
  return 'Hello, my name is $name, I am $age years old, I am from $country';
}
// Optional Positional Parameters 자주 사용하지 않지만 알아두자.

String introduce2(
  String name,
  int age,
  [String? country = 'cuba']
) {
  return 'Hello, my name is $name, I am $age years old, I am from $country';
}
// Optional Positional에서 String에 null safety를 적용했다.
// api등을 이용하거나 하면 해당 파라미터에 null이 들어올수도 있다. 이때 null safety를 해 주지 않으면
// 컴파일에서는 문제 없으나, 런타임에서 오류가 발생해 다운이 될수 있다. 주의하자.
// 즉, 위 함수보다 이런 형태로 함수를 사용해야 한다는 것이다.

void main() {
  var results = introduce('kan', 20);
  print(results);

  var results2= introduce('kan', 20, null);
  // 앱을 사용하는 중에 이렇게 인자 값으로 null이 들어올수 있다. 
  // 그럼 런타임 오류가 발생해 앱이 다운되게 된다.
  // 그러니 함수 구성시 null safety를 꼭 체크해서 적용해 주자.

  var results3= introduce2('kan', 20, null);
  print(results3);
  // null safety가 적용이 되면 이처럼 null이 들어와 안전해 진다.
  // results : Hello, my name is kan, I am 20 years old, I am from null

}
