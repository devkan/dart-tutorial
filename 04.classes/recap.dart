
class Player {
  final String name; // property
  int age, height;
  final String country;

  // name constructor 를 바로 사용해 constructor를 생성할 수 있다.
  // json 데이타라서 어떤 데이타가 올지 알수 없기에 dynamic을 사용했다.
  Player.fromJson(Map<String, dynamic> json)
    : name = json['name'],
      age = json['age'],
      country = json['country'],
      height = json['height'];

  void sayHello() {
    print("My name is $name, $age years old, I am from $country, $height cm tall");
  }      
}


void main() {
  var apiData = [
    {
      'name': 'kan',
      'age': 50,
      'country': 'korea',
      'height': 180,
    },
    {
      'name': 'min',
      'age': 20,
      'country': 'usa',
      'height': 190,
    },
    {
      'name': 'japan',
      'age': 30,
      'country': 'japan',
      'height': 160,
    },
    {
      'name': 'china',
      'age': 40,
      'country': 'china',
      'height': 170,
    },

  ];

  apiData.forEach((json){
    var player = Player.fromJson(json);
    player.sayHello();
  });


}