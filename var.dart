void main(){
	var name = "Kan";
	name = "Devi kan";
	//name = 40; // A value of type 'int' can't be assigned to a variable of type 'String'.
	// string형의 변수에는 string이 와야 오류가 발생하지 않는다.

	String name2 = "John";
	name2 = "Doe";
}

/*
var는 명시적으로 사용하는 것으로 타입을 지정하지 않아도 알아서 인식하게 된다.
var name이라고 지칭하지만, 데이타를 보고 dart는 이것이 string이라고 인식하게 된다.
그럼에도 String 처럼 타입을 지정하는 경우가 있는데, 이는 class나 property 선언시 타입을 확정시키기 위해 지정하는 경우가 많고..
그외 관습적으로 메소드 내부의 지역변수를 선언할때는 그냥 var를 많이 사용한다.
var를 사용하는 dart의 스타일 가이드라고는 한다.
*/