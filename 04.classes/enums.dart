
// enums : 개발자들이 실수하지 않게 도와 주는 타입이다.

enum Country {korea, usa, japan, china}
// 이렇게 지정하면 되고, string으로 지정하지 않는다.

class Player {
  String name;
  int age;
  Country country;
  // 그럼 country를 더이상 String형이 아닌 Country형으로 지정해서 사용해야 한다.

  Player({
    required this.name,
    required this.age,
    required this.country,
  });

  void sayHello() {
    print("My name is $name");
  }
}

void main() {
  var kan = Player(name: 'kan', age: 50, country: Country.korea);
  kan.name = 'min';
  kan.age = 20;
  kan.country = Country.usa;
  // enum에 적힌 값으로만 사용이 가능해 진다.
  // 기존처럼 korea 이렇게 직접 입력하면 오류가 난다.
  // 출력시에는 enum.name으로 출력하면 된다. print(kan.country.name); 이처럼

  var min = Player(name: 'min', age: 20, country: Country.usa)
    ..name = 'jin'
    ..age = 10
    ..country = Country.china
    ..sayHello();

  print(kan.country.name); // usa;
}

/*
enum은 생성하는 것으로 불러서 많이 사용할것이다.
특히 플로터에서 color 같은 것이 enum으로 되어 있다.
그래서 color = 'blue'; 이런식으로 안하고..
color = Colors.blue; 이런식으로 사용하게 될것이다.
*/