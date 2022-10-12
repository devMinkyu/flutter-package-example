# Flutter 세미나

## Flutter란?

> Flutter는 Google에서 개발하고 Mobile World Congress 2018에서 최초 베타 릴리스를 발표하면서 새롭게 소개된 크로스 플랫폼 모바일 앱 개발 프레임워크입니다. 또한 개발자가 iOS와 Android 두 OS에 대해 고품질 기본 인터페이스를 제작하는 데 도움을 주는 크로스 플랫폼 프레임워크라고 할 수 있습니다. 기존 UI를 모두 버리고 자체적으로 UI를 렌더링하기 때문에 iOS에서 material 디자인과 ripple 애니메이션 을 볼 수 있고 Android 에서 cupertino 디자인을 볼 수 있습니다. 마치 화면 전체를 2D 그래픽 API로 fillRect 하고 drawText drawImage 해서 앱을 만드는 것처럼 Flutter 엔진이 Skia 기반으로 렌더링 해줍니다. 웹 개발에서 HTML을 모두 무시하고 전체를 flash나 canvas로 만드는 것과 같습니다

## Dart

> Java와 비슷한 포맷이랑 JavaScript에 dynamic을 가져다 쓴 Google에서 만든 언어 (망작....) null Safety도 2.11 부터 대응 되어서 이전 버전으로 만들어진 라이브러리는 사용하기가 매우 별로인....

### Dart vs Kotlin

1. 선언 방식

```dart
String dart = '최악';
final dart = '최악'; == final String dart = '최악'; 
```

```kotlin
var kotlin = "굳굳" 
val kotlin = "굳굳"
```

2. 비교

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

```kotlin
when(value) {
    a -> "a 입니다"
    b -> "b 입니다"
}
```

3. 함수 사용

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

4. 고차함수

```dart
  // same (int) -> int
  static void highOrderFunction1(int Function(int) test) {}

  // same (int) -> Unit
  static void highOrderFunction2(Function(int) test) {}

  // same () -> Unit
  static void highOrderFunction3(Function test) {}

  static void highOrderFunctionStart() {
    highOrderFunction1((p0) {
      return p0;
    });
    highOrderFunction2((p0) {});
    highOrderFunction3(() {});
  }
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
Link: [플러터 라이브러리 모음 사이트][https://pub.dev/]

### FlutterGen

> Flutter에서는 로컬 이미지를 사용하기 위해서는 해당 이미지에 path를 다 써야해서 개발자 실수가 나올 수 있지만, 해당 라이브러리를 사용하게 되면, 자동으로 코드로 generate 해주기 때문에 사용하기 쉽고 실수 없이 이미지를 가져다 쓸수 있게끔 도와주는 라이브러리입니다.

#### 예시

- 사용하기 전
```dart
Widget build(BuildContext context) {
  return Image.asset('assets/images/image_test1.png');
}
```

- 사용하기 후
```dart
/// generate 되는 코드
AssetGenImage get imageTest1 => const AssetGenImage('assets/images/image_test1.png');
AssetGenImage get imageTest2 => const AssetGenImage('assets/images/image_test2.png');

Widget build(BuildContext context) {
  return Assets.images.profile.image();
}
```

Link: [AssetsGen][https://pub.dev/packages/flutter_gen]

### OSSLicenses
Link: [OSSLicenses][https://pub.dev/packages/flutter_oss_licenses]

### Retrofit
Link: [Retrofit][https://pub.dev/packages/retrofit]

### freezed
Link: [freezed][https://pub.dev/packages/freezed]

### FVM

Flutter는 Android 랑 다르게 SDK가 로컬로 다운을 받아서 관리하기 때문에, 버전을 올려서 개발 시 다른 프로젝트와도 맞춰야하고, 이 전에 나온 이슈가 있을 시에는 다시 downgrade를 해주고 다시 돌아와서 작업할 땐 upgrade를 해줘야함

> Flutter Version Management의 약자로 Flutter SDK 버전을 프로젝트 별로 다르게 적용할 수 있게끔 도와주는 라이브러리입니다.

1. fvm 사이트 가서 install
2. .zshrc 파일에 해당 라인 추가
```shell
export PATH="$PATH":"$HOME/development/flutter/bin"
export PATH="$PATH":"$HOME/bin/cache/dart-sdk/bin"
export PATH="$PATH":"$HOME/.pub-cache/bin"
```
3. 해당라인 적용
```shell
pub global activate fvm
```
4. 가장 기본인 stable 다운 후 목록 확인, 사용
```shell
fvm install stable
fvm list
fvm use stable
```
5. 특정 버전을 쓰고 싶으면
```shell
fvm install 2.0.5
fvm list
fvm use 2.0.5
```
6. 안드로이드 스튜디오에서 SDK path 수정
|로컬 SDK(기본)|FVM SDK|
|---|---|
|asd|das|
7. gitignore에 해당 파일 추가
```shell
.fvm
```
9. 사용법
```shell
// 기존
flutter upgrade
flutter --version
flutter pub get
flutter clean

// fvm
fvm flutter upgrade
fvm flutter --version
fvm flutter pub get
fvm flutter clean
```

Link: [FVM][https://fvm.app/]