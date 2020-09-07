# exeicism.io 다트 트랙 문제 풀고 다른 사람들 코드 리뷰 기록

# Reverse string

### 나의 Solution

```dart
String reverse(String str) => str.split('').reversed.join();

```

### 커뮤니티 리뷰

```dart
String reverse([String quoted = '']) =>
    String.fromCharCodes(quoted.runes.toList().reversed);
```

- fromCharCodes : utf-16 코드를 스트링으로 변환
- runes: String을 표현해주는 정수 유니코드로 변환

# Leap

### 나의 Solution

```dart
class Leap {
  bool leapYear(int year) {
    if (year % 400 == 0) {
      return true;
    } else if (year % 4 == 0 && year % 100 != 0) {
      return true;
    } else {
      return false;
    }
  }
}
```

- 일단 결과값은 윤년이냐 아니냐 두개 뿐이고.
- 우선 400으로 나누어 떨어지면 무조건 true 니까 처음부터 걸러주고.
- 그 다음에 남는 경우는

1. 4로 나누어 떨어지지만 100으로 나누어 떨어져서 false인 경우.
2. 4로 나누어 떨어지고 100으로 나누어 떨어지지 않아 true인 경우.
3. 4로 나누어 떨어지지 않아 fasle인 경우(분기 하나를 생략 가능)

### 커뮤니티 리뷰

- 가장 많이 보이는 solution. 근데 가독성이 떨어지는 느낌.

```dart
class Leap {
  bool leapYear(int year) {
    return ((year % 4) == 0 && year % 100 != 0 || year % 400 == 0);
  }
}
```

- 위의 내용을 변수에 담아놓으니 깔끔해진 solution

```dart
class Leap {
  bool leapYear(int year) {
    bool four = year % 4 == 0;
    bool hundred = year % 100 == 0;
    bool fourHundred = year % 400 == 0;

    return four && !hundred && fourHundred;
  }
}
```

# Scrabble Score

### 나의 solution

```dart
Map<String, int> charMap = {
  'a': 1,
....
  'z': 10
};

int score(String word) {
  List<String> wordList = word.split('').toList();
  int sum = 0;
  wordList.forEach((element) {
    sum += charMap[element];
  });

  return sum;
}
```

- Map 만드는게 일이었음..;

### 커뮤니티 리뷰

- 맵<숫자, 배열<알파벳>> → 맵<알파벳,숫자> 로 바꾸는 방법

```dart
class WordScorer {
  final Map<int, List<String>> letterScoresRaw = {
    1: ['A', 'E', 'I', 'O', 'U', 'L', 'N', 'R', 'S', 'T'],
    2: ['D', 'G'],
    3: ['B', 'C', 'M', 'P'],
    4: ['F', 'H', 'V', 'W', 'Y'],
    5: ['K'],
    8: ['J', 'X'],
    10: ['Q', 'Z']
  };
  final Map<String, int> _scoreMap = {};

void buildScoreMap() {
    letterScoresRaw.forEach((score, letters) {
      letters.forEach((l) {
        _scoreMap[l] = score;
      });
    });
  }
```
