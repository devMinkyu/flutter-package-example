# Flutter 세미나

## Flutter란?

> Flutter는 Google에서 개발하고 Mobile World Congress 2018에서 최초 베타 릴리스를 발표하면서 새롭게 소개된 크로스 플랫폼 모바일 앱 개발 프레임워크입니다.
또한 개발자가 iOS와 Android 두 OS에 대해 고품질 기본 인터페이스를 제작하는 데 도움을 주는 크로스 플랫폼 프레임워크라고 할 수 있습니다. 
기존 UI를 모두 버리고 자체적으로 UI를 렌더링하기 때문에 iOS에서 material 디자인과 ripple 애니메이션 을 볼 수 있고 Android 에서 cupertino 디자인을 볼 수 있습니다.
마치 화면 전체를 2D 그래픽 API로 fillRect 하고 drawText drawImage 해서 앱을 만드는 것처럼 Flutter 엔진이 Skia 기반으로 렌더링 해줍니다. 웹 개발에서 HTML을 모두 무시하고 전체를 flash나 canvas로 만드는 것과 같습니다

## Dart

> Java와 비슷한 포맷이랑 JavaScript에 dynamic을 가져다 쓴 Google에서 만든 언어 (망작....)
null Safety도 2.11 부터 대응 되어서 이전 버전으로 만들어진 라이브러리는 사용하기가 매우 별로인....

### Dart vs Kotlin

#### 선언 방식

```dart
String dart = '최악';
final dart = '최악'; == final String dart = '최악'; 
```

```kotlin
var kotlin = "굳굳" 
val kotlin = "굳굳"
```

#### 비교

```dart
switch(value) {
  case a: 
    'a 입니다';
    break;
  case b:
    'b 입니다';
    break;
  default:
    '';
    break;
}
```

#### 함수 사용

```kotlin
when {
    a -> "a 입니다"
    b -> "b 입니다"
}
```

```dart
void function(String a, {
  required String b,
  String? c
}) {

}

function('바로 사용', b: '옵션');
```

```kotlin
fun function(
        a: String,
        b: String,
        c: String?
)

function(
        "그냥",
        b = "선언",
        null
)
```

## Flutter

### Stateful vs Stateless

- 변화가 가능한 화면, 변화하지 않을 꺼라는 것을 선언한 화면 (var, val) 같은 느낌
- 성능을 위해서는 변화하는 화면을 적게 변화하지 않을 화면을 많이 사용
- 전체 스크린은 Stateful, 각각 위젯을 만들 땐 Stateless 구글에서 선호

> 예시 화면

### column vs row

- 말 그대로 가로, 세로

> 예시 화면

## 유용한 패키지
https://pub.dev/

https://pub.dev/packages/assets_gen

https://pub.dev/packages/flutter_oss_licenses

https://pub.dev/packages/retrofit

https://pub.dev/packages/freezed