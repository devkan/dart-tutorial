void main(){
  var numbers = {1, 2, 3, 4, 5};
  Set<int> numbers2 = {1, 2, 3, 4, 5};
  // 동일한 구성이고..
  // set과 list의 차이점은 중복을 허용하지 않는다는 것이다. 즉, 데이타가 유니크 하다는 것이다.

  numbers.add(1);
  print(numbers); // {1, 2, 3, 4, 5}
  // 1을 추가해도 중복으로 인식되어 추가되지 않는다.

}