class Player {
  String name;
  int age;
  String country;

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
  var kan = Player(name: 'kan', age: 50, country: 'korea');
  kan.name = 'min';
  kan.age = 20;
  kan.country = 'usa';
  // 이처럼 데이타를 변경할때 cascade operator를 사용하면 편하다.

  var min = Player(name: 'min', age: 20, country: 'usa')
    ..name = 'jin'
    ..age = 10
    ..country = 'japan'
    ..sayHello();
  // 위와 같은 구조이며, 동일하게 작동한다.  
  // 이것이 cascade operator이다. 변수명을 매번 사용하지 않고, ..을 이용해서 축약된 형태의 코드 구성이 가능하다.
  // var 맨 마지막에 ; 은 꼭 제거해야 한다.
  // 예제라서 값 할당하고 바로 사용한 것이지, 일반적으로 다른대로 불러 사용한다.

  var you = Player(name: 'you', age: 30, country: 'china');

  var china = you
    ..name = 'you2'
    ..age = 20
    ..country = 'china'
    ..sayHello();  
}