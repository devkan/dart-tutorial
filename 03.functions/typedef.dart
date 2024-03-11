
typedef ListOfInts = List<int>;

ListOfInts reverserListOfNumbers(List<int> list){
  var reversed = list.reversed;

  return reversed.toList();
}
/*
typedef는 자료형에 alias를 붙일수 있게 해준다.
그래서 List<int> reverserListOfNumbers(List<int> list)로 사용해야 하는것을
typedef ListOfInts = List<int>; 로 지정해서 이 ListOfInts를 대신 사용할 수 있는 것이다.
*/


typedef UserInfo = Map<String, String>;

String sayHi(UserInfo userInfo){
  return "Hi ${userInfo['name']}";
}
/*
String sayHi(Map<String, String> userInfo)로 사용하는것을 typedef로 UserInfo = Map<String, String> 해서
String sayHi(UserInfo userInfo) 으로 사용 할수 있는 것이다.
*/

void main(){
  print(reverserListOfNumbers([1,2,3])); // [3, 2, 1]

  print(sayHi({'sdfsdfd': 'kan'})); // Hi null
  // 사용자가 이렇게도 보낼수 있다는 것이다.
}