
// name constructor
class Player {
  final String name; // property
  int age, height;
  final String country;

  Player({
    required this.name,
    required this.age,
    required this.country,
    required this.height,
  });
  // constructor가 이것들을 class property에 할당한다.

  // named constructor 이다.
  Player.createKorean({required String name, required int age}) 
    : this.name = name, 
      this.age = age, 
      this.country = 'korea', 
      this.height = 180;
  // createKorean이라는 method를 만들어서, name과 age를 받아서, country와 height는 고정값으로 넣어주는 것이다.
  // 이건 named parameter를 이용한 것이다.

  Player.createJapan({required this.name, required this.age, this.country = 'japan', this.height = 160});
  // 이렇게 단축화 시키는 방법도 있다. nameed parameter에서 사용한다.
  // nameed parameter 반드시 {}를 사용해야 한다. 차후 무지 까 먹는다.
  // syntactic sugar(편의 문법)이라고 부른다.


  Player.createUsa(String name, int age) 
    : this.name = name, 
      this.age = age, 
      this.country = 'usa', 
      this.height = 190;
  // 이건 positional parametor를 이용한 것이다.
  
  Player.createChina(this.name, this.age, [this.country = 'china', this.height = 170]);
  // syntactic sugar(편의 문법)이라고 부른다.
  // [...]는 position parameter에서 디폴트 값을 지정할때 사용한다.
  // 여기서는 ?(null safety)를 사용하지 않았다. function이랑 틀리게 값을 할당하기 때문에 null이 올수 없다.



  void sayHello() {
    print("My name is $name");
  }
}

void main() {
  var player = Player.createKorean(
    name: 'kan',
    age: 40,
  );

  var player2 = Player.createUsa('min', 20);  
  // positional argument

  var player3 = Player.createJapan(name:'japan', age:20);  

  var player4 = Player.createChina('china', 20);  

  player.sayHello();
  player2.sayHello();
  player3.sayHello();
  player4.sayHello();

}