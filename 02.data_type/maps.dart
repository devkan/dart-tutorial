void main() {
  var player = {
    'name': 'kan',
    'age': 20,
    'power': false,
  };
  // 이렇게 적으면 Map<String, Object>로 dart가 인식하게 된다.
  // key는 String형이고, value는 다양한 object 형태로 인식한다.

  Map<int, bool> player2 = {
    1: true,
    2: false,
  };
  // 이건 직접 타입을 선언한 것으로 key는 int형이고, value는 bool형으로 인식하게 된다.

  Map<List<int>, bool> player3 = {
    [1, 2, 3]: true,
    [4, 5, 6]: false,
  };
  // 이렇게 구성도 가능하다.

  List<Map<String, Object>> player4 = [
    {'name': 'kan', 'age': 20, 'power': false},
    {'name': 'min', 'age': 20, 'power': true},
  ];
  // 이렇게 List안에 Map을 넣는 것도 가능하다.
}
