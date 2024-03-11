
class Player{
  late final String name; // 값을 나중에 할당하기 때문에 late를 사용하지 않으면 오류남
  late int age;
  late final String country;

  //constructor 
  Player(String name, int age, String country){
    this.name = name;
    this.age = age;
    this.country = country;
  }
  // 이렇게 constructor를 생성해도 되나, 동일하게 타입을 다 지정하고 다시 this를 통해 할당하는 과정이 반복되고 있다.
  // 이를 줄이기 위해 아래와 같이 사용할수 있다.

  void sayHello(){
    print("My name is $name");
  }
}


class Player2{
  final String name; // 아래처럼 constructor를 사용하면 late를 사용하지 않아도 된다.
  int age;            // late가 있어도 오류는 나지 않는다.
  final String country;

  //constructor 
  Player2(this.name, this.age, this.country);
  // 그래서 일반적으로 이렇게 많이 사용한다.


  void sayHello(){
    print("My name is $name");
  }
}

  // 이렇게 constructor를 생성해도 되나, 동일하게 타입을 다 지정하고 다시 this를 통해 할당하는 과정이 반복되고 있다.
  // 이를 줄이기 위해 아래와 같이 사용할수 있다.



void main(){
  var player = Player('kan', 40, 'korea');
  player.sayHello();
  var player2 = Player2('min', 20, 'use');
  player2.sayHello();
}