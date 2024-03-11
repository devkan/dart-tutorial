
class Player{
  String name = 'kan';
  int age = 40;
  final String country = 'korea'; // final 변수지정때처럼 변경이 불가능해 진다.

  void sayHello(){
    print('My name is $name');
    // dart는 메소드내 this 사용하지 않도록 권고하고 있다.
    // 사용해도 되지만, 왠만하지 하지 말자..


    var age = 20; // 지역변수
    // 지역변수로 어쩔수 없이 같은 이름으로 사용할 경우에만 this를 사용하자.
    // 그런 상황을 만들지 않는 것이 좋은데, 어쩔수 없을때는 이처럼 사용하면 되는 것이다.

    print('My age is ${this.age}'); // 40
  }
}
// class에서 타입을 꼭 명시해야 한다.
/*
class에서는 const를 지정할수 없다. 
const는 컴파일 타임시 결정되는 값으로, 변경할 수 업슨ㄴ 값으로 메메모리에 한번 할당되면 변경할수 없다.
그런데, class의 각 instance는 실행중에 생성이 되고, 그때 값이 할당이 되기 때문에 const의 컴파일 시점에
결정되어야 하는 조건과 상충이 되기 때문에 사용을 할수 없는 것이다.

그러나 const는 클래스 레벨에서는 사용 될수 있다. 이런 변수는 static으로 선언되어야 한다.
이는 클래스 자체에 연결되어 있으며, 이 클래스의 모든 인스턴즈에서 동일하게 참조하게 된다.

따라서, Dart에서 const는 static 필드에서만 사용 가능한 이유는 const 값이 컴파일 시점에 결정되어야 하고, 
이는 각 인스턴스의 런타임 값과는 다르기 때문입니다. 그러나 final은 런타임에 값이 결정되기 때문에,
인스턴스 변수로 사용될 수 있는 것이다.
*/

void main(){
  var player = Player(); // new Player();라고 사용해도 된다.
  // instance 생성후 property에 접근해 출력 및 변경을 하면 된다.
  print(player.name); // kan
  
  player.name = 'min';
  print(player.name); // min

  player.sayHello(); // My name is min, My age is 40

  // player.country = 'usa'; // final로 지정되었기에 수정시 오류를 유발시킨다.
  // err: 'country' can't be used as a setter because it's final.

}