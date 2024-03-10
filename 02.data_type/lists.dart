void main() {
  var numbers = [1, 2, 3, 4, 5];
  List<int> numbers2 = [1, 2, 3, 4, 5];
  // 둘다 같은 형식이다.
  // var로 지정해서 List<int>형식이고, 직접 정의해도 된다는 것이다.
  // list의 장점은 collection if 와 collection for를 사용할 수 있다는 것이다.

  //numbers.add('ddd'); // int형 이기에 string은 올 수 없다.
  numbers.add(7); // numbers.만 입력하면 수많은 요소를 사용가능하다는 것을 알수 있다.

  var givemeFive = true;
  var numbers3 = [
    1,
    2,
    3,
    4,
    if (givemeFive) 5, // collection if다.
  ];
  // list에서 if문을 사용해서 값을 할당할수 있다.
  // list에서 이처럼 내려쓰려면 해당 리스트의 마지막에 , 를 적어주고, shift + alt + F를 해 주면 자동으로 포맷팅 된다.

  print(numbers3); // [1, 2, 3, 4, 5]
}
