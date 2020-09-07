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
