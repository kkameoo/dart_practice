//  함수: 입력(파라미터) -> 연산 -> 출력(return)
//  입력 종료 , 출력 종료 -> 2 * 2 -> 4가지 조합
//  입력이 있을 때는 매개변수로 전달, 입력이 없을 때는 ()
//  출력이 있을 때는 return 키워드로 데이터 반환
//  출력이 없을 때는 void 키워드 (생략 가능)

// 위치 매개변수를 사용한 함수
String  positionalParam(String firstName,
[String? lastName = ""]) {
// lastName이 null이면 firstName 값,
// 둘 다 있으면 full Name 반환
  return lastName != null ? "$firstName $lastName" : firstName;
}

CreateUser({required String name, // required: 필수 파라미터
required int age, // 필수 파라미터
String? email // 선택전 파라미터 (nullable)
}) {
  print("name: $name, age: $age, email: $email");
}

main() {
  print("Positional Param\t------------");
  print(positionalParam("Steve", "Jobs"));
  print(positionalParam("Bill", "Gates"));
  print(positionalParam("Elon"));

  //  선택적 이름 매개변수 활용 함수 : {} 사용
  print("Named Parmas\t----------------------");
  CreateUser(name: "홍길동", age: 25, email: "hong@sdasd.org");
  CreateUser(age: 25, name: "임꺽정"); // 순서는 중요하지 않음

  //  익명 함수 : 이름 없는 함수
  //  변수에 할당될 수 있고, 다른 함수의 매개 변수로 전달될 수 있고
  //  함수의 결과로 리턴될 수 있음
  print("Annonymous Function\t------------");
  var greeting = (String name) {
    print("Hello, $name");
  };
  greeting("DART");
  
  //  화살표 함수(람다 함수)
  var greetingArrow = (String name) => "Hello, $name!"; //  return 생략
  print(greetingArrow("Flutter"));

  print("greeting -> ${greeting.runtimeType}");
  print("greetingArrow -> ${greetingArrow.runtimeType}");
  
  //  익명 함수와 화살표 함수는 함수형 프로그래밍에서 callBack 함수를 사용함
  var numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  //  1. 모든 수를 제공하고
  //  2. 50보다 작은 수를 필터링하고
  //  3. 내림차순 정렬 : sort

  //  map -> filter -> sort -> output
  var filtered = numbers
                    .map((number) => number * number)
                    .where((number) => number < 50) // filter: 50미만
                    .toList();  // Iterable을 List로 변환
  print("filtered: $filtered -> ${filtered.runtimeType}");
  filtered.sort((a, b) => b.compareTo(a));  //  sort desc
  print("원본 : $numbers");
  print("결과 : $filtered");

}