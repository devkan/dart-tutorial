// 탸입 지정
typedef Definition = String;
typedef Term = String;

// class Dictionary
class Dictionary {
  Map<Term, Definition> words = {};

  // 단어 추가
  void add(Term term, Definition definition) {
    words[term] = definition;
  }

  // 단어 리턴
  Definition? get(Term term) {
    return words[term];
  }

  // 단어 삭제
  void delete(Term term) {
    words.remove(term);
  }

  // 단어 업데이트
  void update(Term term, Definition definition) {
    if (words.containsKey(term)) {
      words[term] = definition;
    }
  }

  // 모든 출력
  void showAll() {
    words.forEach((term, definition) {
      print('$term: $definition');
    });
  }

  // 총 갯수 리턴
  int count() {
    return words.length;
  }

  // update + insert
  void upsert(Term term, Definition definition) {
    words[term] = definition;
  }

  // 존재 여부
  bool exists(Term term) {
    return words.containsKey(term);
  }

  // 복수 단어 등록
  void bulkAdd(List<Map<String, String>> termsDefinitions) {
    for (var entry in termsDefinitions) {
      if (entry.containsKey('term') && entry.containsKey('definition')) {
        words[entry['term']!] = entry['definition']!;
      }
    }
  }

  // 복수 단어 삭제
  void bulkDelete(List<Term> terms) {
    for (var term in terms) {
      words.remove(term);
    }
  }
}

void main() {
  var dictionary = Dictionary();
  dictionary.add("김치", "라면과 함께..");
  dictionary.showAll();
  
  dictionary.update("김치", "밥과 함게..");
  dictionary.upsert("깍뚜기", "국밥과 함께..");
  print(dictionary.exists("깍뚜기")); // true
    
  dictionary.bulkAdd([
    {"term": "개발자", "definition": "삽질하는 사람"},
    {"term": "코더", "definition": "코딩하는 사람"}
  ]);
  dictionary.bulkDelete(["김치", "깍뚜기"]);
  dictionary.showAll();
}
