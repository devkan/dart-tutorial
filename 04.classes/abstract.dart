
// Abstract class(추상화 클래스)
// 추상화 클래스는 다른 클래스들이 직접 구현해야 하는 메소드를 모아 놓은 청사진(blueprint)로 보면 된다.

abstract class Human{
  void walk(); // 추상 메소드
  // 이렇게 리터값이랑 메소드명만 정의하고, 구현은 하지 않는다. parameter는 사용할 수 있다.
}
// 메소드 이름과 반환 타입만 정해서 정의해 두고, 이 Human을 상속받는 클래스에서 강제로 해당 메소드를 구현하게 강제할 수 있다.
// 이 추상화 클래스를 사용하려면 반드시 그 메소드를 정의해서 사용해 줘야 한다는 것이다.
// 플로터에서는 많이 사용하지 않다는고 하지만, 알아두자.

enum Country {korea, usa, japan, china}

class Player extends Human{
  String name;
  int age;
  Country country;

  Player({
    required this.name,
    required this.age,
    required this.country,
  });

  void walk() {
    print("$name is walking");
  }

  void sayHello() {
    print("My name is $name");
  }
}

class Player2 extends Human{

  void walk() {
    print("I'm walking");
  }
}

void main() {
  var kan = Player(name: 'kan', age: 50, country: Country.korea);
  kan.name = 'min';
  kan.age = 20;
  kan.country = Country.usa;

  var min = Player(name: 'min', age: 20, country: Country.usa)
    ..name = 'jin'
    ..age = 10
    ..country = Country.china
    ..sayHello();

  print(kan.country.name); // usa;
}
