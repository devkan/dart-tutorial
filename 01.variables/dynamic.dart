void main(){
  var name; // 이처럼 하면 dynamic type이 된다.
  name = "Kan";
  name = 40;
  name = true;
  // name이 dynamic type이기때문에 오류가 발생하지 않는 것이다.
  // flutter등 웹에서 어떤 데이타 어떻게 들어올지 몰라서 이리 사용된다고는 함..
  // 어떤 타입이 올지 모르기 때문에 조심해서 사용해야 한다.

  dynamic name2; // 다른 형태의 dynamic type. 위와 동일하다.
  
  if(name is String){
    name. // 이렇게 하면 string의 메소드가 출력된다. 왜냐면 if문 안의 name은 String이기 때문이다.
  }

  if(name is int){
    name. // 이렇게 하면 int의 메소드가 출력된다. 왜냐면 if문 안의 name은 int이기 때문이다.
  }
}

/*
dynamic type은 어떤 타입이든 다 받아들일 수 있는 타입으로 많이 편하다.
하지만 남발해서는 안되며, 꼭 필요한 경우에만 사용하자.
*/