void main(){
  String name = "Dart";
  name = "Flutter";
  //name = 123;
  // 이렇게 name 변수를 다른 값을 변경을 할수 있다.(물론 같은 타입이여야 한다.)

  final name2 = "Dart";
  name2 = "changed"; // err: The final variable 'name2' can only be set once.
  // final 변수는 한번 선언하면 변경이 불가능하다.
  // 변경되지 않은 값을 지정할때는 이처럼 final을 사용하면 된다.

  final String name3 = "Dart";
  // 이처럼 타입을 붙여도 문법상 문제가 없다. dart에서 무슨 타입인지 인지를 하기 때문에..
  // 하지만, 위처럼 적는다고 잘못된 것이 아니라는 것이다. 편한대로 사용하면 된다.
}