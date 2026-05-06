import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:visa_agent_app/presentation/screens/home/data/models/applicant.dart';

part 'payment_profile.freezed.dart';
part 'payment_profile.g.dart';

@freezed
class PaymentProfile with _$PaymentProfile {
  factory PaymentProfile({
    @Default('') String id,
    required Applicant applicant,
    @Default('') String paymentStatus,
    @Default('') String visaAppStatus,
  }) = _PaymentProfile;

  factory PaymentProfile.fromJson(Map<String, dynamic> json) =>
      _$PaymentProfileFromJson(json);
}

final List<PaymentProfile> paymentProfiles = [
  PaymentProfile(
      id: "1",
      applicant: Applicant(
          firstName: "Olivar",
          lastName: "Olivar",
          id: "1",
          nationality: "Syrian"),
      paymentStatus: PaymentStatus.paid.name,
      visaAppStatus: VisaAppStatus.ongoing.name),
  PaymentProfile(
      id: "2",
      applicant: Applicant(
          firstName: "Olga", lastName: "Olga", id: "2", nationality: "US"),
      paymentStatus: PaymentStatus.pending.name,
      visaAppStatus: VisaAppStatus.pending.name),
  PaymentProfile(
      id: "3",
      applicant: Applicant(
          firstName: "Olga", lastName: "Olga", id: "3", nationality: "US"),
      paymentStatus: PaymentStatus.unpaid.name,
      visaAppStatus: VisaAppStatus.ongoing.name)
];

enum PaymentStatus { paid, unpaid, pending }

enum VisaAppStatus {
  pending,
  ongoing,
  completed,
}
