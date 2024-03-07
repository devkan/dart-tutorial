void main(){
  late final String name;
  // late는 초기 데이터 없이 변수를 선언할수 있게 해 준다.

  // do something.. api, etc..

  name = "Dart";
  // 이렇게 나중에 해당 변수에 값을 할당할수 있다.
  // 하지만 name은 final이기 때문에 다시 재 할당은 불가능하다.
  // data fetching할때 아주 유용한다.

  late var name2;
  print(name2); // err: The late local variable 'name2' is definitely unassigned at this point.
  // 이처럼 name2에 값이 할당되지 않을경우 미리 오류로 알려준다.

 }