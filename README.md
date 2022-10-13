# Flutter 세미나

## Flutter란?

> Flutter는 Google에서 개발하고 Mobile World Congress 2018에서 최초 베타 릴리스를 발표하면서 새롭게 소개된 크로스 플랫폼 모바일 앱 개발 프레임워크입니다. 플러터 프레임워크는 소스 코드를 네이티브 CPU 머신 코드로 직접 컴파일 하며 UI를 렌더링 엔진 Skia로 직접 렌더링하기 때문에 성능이 뛰어나다. 소프트웨어 디자이너의 선택에 따라 iOS 앱에서 구글의 Material 테마 디자인과 Ripple 애니메이션을 사용하는 것이 가능하고 반대로 안드로이드에서 애플의 Cupertino 테마를 적용하는 것도 가능하다. 즉 플랫폼에 관계없이 플러터용 테마 디자인 라이브러리 적용 및 테마(Theme) 커스텀이 가능하다는 뜻이다. 각 OS의 네이티브 Widget/UI 컴포넌트로 변환하지 않고 플러터의 렌더링 엔진인 스키아로 직접 플랫폼 캔버스 상에 그리기 때문에 성능이 높고 어느 운영체제에서나 픽셀 퍼펙트한 소프트웨어 디자인이 가능하다.

## Dart

> Google 이 Javascript 를 대체하기 위해 2011년 개발한 웹프로그애밍 언어, 모바일 앱, 웹, 명령어 스크립트, 서버 프로그래밍 등 어떤 것이든 다트를 사용해 만들 수 있다. 웹앱이 아닌 네이티브 코드로 안드로이드, ios용 앱을 동시에 개발 할 수 있다. Java 와 유사한 문법이다.

### Dart vs Kotlin

[Dart 기초 문법](https://devmg.tistory.com/175)

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
Link: [플러터 라이브러리 모음 사이트](https://pub.dev/)

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
  return Assets.images.imageTest1.image();
}
```

Link: [FlutterGen](https://pub.dev/packages/flutter_gen)

### OSSLicenses

> 프로젝트에서 쓰이고 있는 패키지 OSSLicenses 에 정보를 코드로 생성해주어서 가져다 쓸수 있겠끔 도와주는 라이브러리 입니다.

Link: [OSSLicenses](https://pub.dev/packages/flutter_oss_licenses)

### Retrofit

> 안드로이드 Retrofit 이랑 동일하게 사용할 수 있게 해주는 라이브러리 입니다.

Link: [Retrofit](https://pub.dev/packages/retrofit)

### freezed

> flutter 판 DataClass 입니다.

1. Flutter 내 서버 통신을 위해 Json을 생성하기 위해서는 [json_serializable](https://pub.dev/packages/json_serializable) 라는 라이브러리를 사용하여서 각각 변수들에 annotation을 넣어준 뒤 generate를 해줘야함
2. [CopyWith](https://pub.dev/packages/copy_with_extension_gen) 를 사용하고 싶으면 json이랑 동일하게 DTO 상단에 annotation을 넣어줘야함
3. 이러한 불편한 요소들을 통합, DTO 응답값 선언 후 생성사 클래스에 값을 넣어줘야하는 중복 코드 X

Link: [freezed](https://pub.dev/packages/freezed)

### FVM

Flutter는 Android 랑 다르게 SDK가 로컬로 다운을 받아서 관리하기 때문에, 버전을 올려서 개발 시 다른 프로젝트에서 해당 SDK 버전을 맞춰야하고, 이 전에 나온 이슈가 있을 시에는 다시 downgrade 를 해주고 다시 돌아와서 작업할 땐 upgrade 를 해줘야함

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

|FVM SDK|로컬 SDK(기본)|
|---|---|
|<img width="1013" alt="스크린샷 2022-10-12 오전 8 35 27" src="https://user-images.githubusercontent.com/23225222/195220526-4b1ba760-5832-45fe-8803-ba7365c415cd.png">|<img width="997" alt="스크린샷 2022-10-12 오전 8 35 43" src="https://user-images.githubusercontent.com/23225222/195220531-b87dea5b-efa2-4211-8864-1f28eb8e12b0.png">|

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

Link: [FVM](https://fvm.app/)
