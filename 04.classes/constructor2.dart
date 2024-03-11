class Player {
  final String name;
  int age;
  final String country;

  //constructor
  //Player(this.name, this.age, this.country);
  // positional argument

  //Player({this.name, this.age, this.country});
  // named constructor parameter {...}로 감싸면 된다.
  // 그런데, 이형식이면 name이나 다른 값에 null일수 있다는 오류나 나온다. funtion때처럼

  Player({
    required this.name,
    required this.age,
    required this.country,
  });
  // required를 사용하면 해당 값을 입력안하면 오류가 발생해 컴파일 자체가 안된다.
  // 그래서 null이 올수 없기때문에 오류가 없어기는 것이다.

  void sayHello() {
    print("My name is $name");
  }
}

void main() {
  var player = Player(
    name: 'kan',
    age: 40,
    country: 'korea',
  );
  // positional argument

  player.sayHello();
}
