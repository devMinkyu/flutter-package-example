
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_freezed.freezed.dart';

@freezed
class UserFreezed  with _$UserFreezed{
  const factory UserFreezed({
    required String id,
    required String name,
    required int age,
    required bool isMen,
  }) = _UserFreezed;


  factory UserFreezed.fromJson(Map<String, Object?> json)
  => _$UserFreezedFromJson(json);
}