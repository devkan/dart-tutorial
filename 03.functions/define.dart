void main(){
  print(sayHello2("kan"));
}

void sayHello(String name){
  print("Hello $name");
}
// 함수는 이처럼 구성되며 void에서는 return 값이 없다.
// 근데 여기서 뭔가 리턴하면 당연 오류가 발생하게 된다.
// A value of type 'String' can't be returned from the function 'sayHello' because it has a return type of 'void'
// 이런 에러가 발생하게 된다.

String sayHello2(String name){
  return "Hello $name";
}
// 리턴하고 싶으면 이처럼 타입을 지정해서 함수를 만들면 된다.
// 물론 return 해야 하고..

String sayHello3(String name) => "Hello $name";
// 이처럼 구성할 수도 있다.
// 이건 fat arrow syntax라고 부르는데, 이건 함수가 한줄일 때만 사용 가능하다.

num plus(num a, num b) => a + b;
// 변수지정한거 같은데, funciton 이다..