
// mixin은 생성자가 없는 클래스를 의미한다.
// 클래스에 property나 method를 추가할때 사용한다.


mixin class Strong{
  final double level = 1500.99;
}
// 버전업 되면서 class만 사용해서는 안되고, mixin을 꼭 적어줘야 한다.
// class 명을 생각해도 된다.

mixin QuickRunnder{
  void runQuck(){
    print("run........");
  }
}

mixin Tall{
  final double height = 180.0;
}

enum Team {blue, red}

class Player with Strong, QuickRunnder, Tall{
  final Team team;

  Player({    
    required this.team,
  });
} 

class Kid with Strong, QuickRunnder{
  final Team team;

  Kid({    
    required this.team,
  });
} 

class Man with Strong, Tall{
  final Team team;

  Man({    
    required this.team,
  });
} 

/*
Mixin은 생성자가 없는 클래스를 의미하며, Mixin 클래스는 상속을 할 때 extends를 하지 않고 with 를 사용한다.
Mixin은 단순히 mixin 내부의 property나 메소드를 가져와 사용만 할 뿐이다.
플로터에서 자주 사용한다.

extend는 확장한 그 클래스는 부모 클래스가 되고, 자식 클래스는 부모 클래스를 super를 통해서 접근하게 되어
그 순간 부모 클래스의 인스턴스가 되어 메모리에 올라가게 된다.
*/


void main(){
  var player = Player(team: Team.blue);
  player.runQuck();
}