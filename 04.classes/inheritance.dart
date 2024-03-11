
class Human{
  final String name;

  Human({required this.name}); 
  // human의 생성자. name을 필수로 요구하고 있다.
  // 그래서 상속받는 Player에서도 무조건 name을 받아야 한다.

  void sayHello() {
    print("My name is $name");
  }
}

enum Team {blue, red}

class Player extends Human{
  final Team team;

  Player({    
    required this.team,
    required String inputName // Human의 생성자가 name을 필수로 요구해서 여기서도 필수로 받아야 한다.
  }) : super(name: inputName); // 그렇게 받은 것을 super를 통해 상위 클래스로 넘겨주는 것이다.
  // 이게 oop의 상속이다. 상위 클래스의 생성자를 호출해서 값을 넘겨주는 것이다.
  // super(name: inputName) 으로 전달해 주는 것은 Human의 named parameter로 요구를 해서 이름인 name이 들어간 것이다.
  // positional parameter로 요구하면, super(inputName) 하면 된다.

  // override
  @override
  void sayHello() {
    super.sayHello();
    // super를 통해 상위 클래스의 메소드를 호출할 수 있다.

    print("and I'm in ${team.name} team");
    // $team으로 출력하면 Team.blue 이렇게 출력이 된다.
    // 그래서 team.name으로 출력하면 blue 이렇게 출력이 된다.
  }
} 


void main(){
  var player = Player(team: Team.blue, inputName: 'kan');
  player.sayHello();
}