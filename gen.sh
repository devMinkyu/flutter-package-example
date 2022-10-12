.fvm/flutter_sdk/bin/dart pub global activate flutter_gen

.fvm/flutter_sdk/bin/flutter pub get || exit 1
.fvm/flutter_sdk/bin/flutter packages pub run build_runner build

.fvm/flutter_sdk/bin/flutter pub run flutter_oss_licenses:generate.dart