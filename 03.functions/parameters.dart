String introduce(String name, int age, String country) {
  return 'Hello, my name is $name, I am $age years old, I am from $country';
}

String introduce2({
  String name = 'anon',
  int age = 99,
  String country = 'unknown',
}) {
  return 'Hello, my name is $name, I am $age years old, I am from $country';
}
// named parameter를 사용하려면 {paramers} 이런 형태로 사용해야 한다.

String introduce3({
  required String name,
  required int age,
  required String country,
}) {
  return 'Hello, my name is $name, I am $age years old, I am from $country';
}
// required를 사용하면 해당 값을 입력안하면 오류가 발생해 컴파일 자체가 안된다.
// 그래서 null이 올수 없기 때문에 문제가 해결되는 것이다.

void main() {
  print(introduce('kan', 40, 'korea')); // 일반적인 방법 (positional parameter)
  /*
  print(introduce(
    age:40,
    name: 'kan',
    country: 'korea',
  )); 
  // named parameter 일반 함수에 사용하면 오류가 발생한다.
  */

  print(introduce2(
    age: 40,
    name: 'kan',
    country: 'korea',
  ));
  // named parameter 사용사 해당 함수의 파라미터에 {...}로 감싸야 오류가 안난다.

  print(introduce2(
    country: 'usa',
  ));
  // named parameter는 이처럼 모든 파라미터가 오지 않을수 있기 때문에 디폴트값을 지정해야 한다.

  introduce2(); 
  // introduce2는 이런식으로 호출이 가능하다. 왜냐면 디폴트 값이 다 세팅이 되어 있기 때문이다.
  // 이건 원하는 형태가 아니지 때문에 값을 입력하도록 요구할 수 있는데, 이때 사용하는 것이 required이다.

  print(introduce3(
    age: 20,
    name: 'min',
    country: 'france',
  ));
  // required로 지정되었기에 모든 파라미터를 입력해야 한다.
}
