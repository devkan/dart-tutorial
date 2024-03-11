
String capitalizeName(String name) => name.toUpperCase();


// String capitalizeName2(String? name) => name.toUpperCase();
// null이 들어오는 것을 처리한다고 ? (null safety)를 name이 적용하지만
// null에는 toUpperCase()가 존재하지 않아서 오류가 발생한다.
// 이때는 아래처럼 해야 한다.

String capitalizeName3(String? name){
  if(name != null){
    return name.toUpperCase();
  }

  return 'Anon'; // null이 들어오면 Anon으로 처리해야 오류가 안난다.
}

String capitalizeName4(String? name) => name != null ? name.toUpperCase() : 'Anon';
// 위의 것을 축약하면 이처럼 처리할수 있다.

String capitalizeName5(String? name) => name?.toUpperCase() ?? 'Anon';
/*
left ?? right // QQ Operator
left가 null아 아니면 left를 리턴하고, null이면 right를 리턴한다.
name.toUpperCase()로 사용하면 오류가 발생하는데, name에 null이 올수 있기 때문에 
name에 ?(옵셔널)을 붙인것이다.

name!.toUpperCase() : name 존재가 확실할때 사용한다.
name?.toUpperCase() : name이 존재한다면 toUpperCase()를 호출해라
*/

void main(){
  print(capitalizeName('kan')); // KAN
  // 일반적인 방법인데, 여기서 null이 들어갈수 있다고 구성해 보면..

  String? name;

  name ??= 'kan'; // QQ equal Operator
  // 만약 name이 null인 경우 할당한다.

  //name = null;
  name ??= 'min';
  // 여기서 다시 min을 넣었지만, name이 null이 아니기에 오류가 발생한다.
  // 03.functions/operator.dart:42:3: Warning: Operand of null-aware operation '??=' has type 'String' which excludes null.
  // name = null; 으로 다시 null로 만들면, min이 들어간다.
  
  print(name);

}