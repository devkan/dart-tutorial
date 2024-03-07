void main(){
  String name = "Dart";
  name = null;
  // A value of type 'Null' can't be assigned to a variable of type 'String'.
  // 이런 오류가 발생함.


  String? name2 = "Dart";
  name2 = null;
  // 이렇게 name2는 String인데, null 될수 있다고 알려주면 오류가 발생하지 않는다.
  // dart한테 알려주는 것이다. null이 될수 있다고. 그럼 컴파일이나 코드 구성시 계속해서 null일 경우를 알려주게 된다.
  // 이처럼 데이타가 null이 될수 있음을 명시해 주는 것을 null safety라고 한다.
  
  name2.length;
  // The property 'length' can't be unconditionally accessed because the receiver can be 'null'.
  // name2는 null이 올수도 있기 때문에 length를 사용하면 오류가 발생할 수 있다고 알려주는 것이다.
  // 그래서 우리는 코드 수정을 통해 이걸 해겷 할수 있는 것이다.

  if(name2 != null){
    name2.length; // no error
  }
  // 이렇게 null이 아닌 경우의 코드를 구성해서 미연에 방지할 수 있는 것이다.

  name2?.length;
  // 위의 if문을 단축해 코딩하면 이처럼 사용할수 있다.
  // 일반적으로 이렇게 많이 사용한다.

}