import 'package:freezed_annotation/freezed_annotation.dart';

part 'applicant.freezed.dart';
part 'applicant.g.dart';

@freezed
class Applicant with _$Applicant {
  factory Applicant({
    @Default('') String id,
    @Default('') String firstName,
    @Default('') String lastName,
    @Default('') String nationality,
  }) = _Applicant;

  factory Applicant.fromJson(Map<String, dynamic> json) =>
      _$ApplicantFromJson(json);
}
