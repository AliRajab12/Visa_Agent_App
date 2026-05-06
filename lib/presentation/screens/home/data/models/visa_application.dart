import 'package:freezed_annotation/freezed_annotation.dart';

import 'applicant.dart';
import 'document.dart';

part 'visa_application.freezed.dart';
part 'visa_application.g.dart';

@freezed
class VisaApplication with _$VisaApplication {
  factory VisaApplication({
    @Default('') String id,
    @Default('') String duration,
    @Default('') String status,
    @Default('') String type,
    @Default('') String date,
    @Default('') String paymentStatus,
    required Applicant applicant,
    @Default([]) List<Document> documents,
  }) = _VisaApplication;

  factory VisaApplication.fromJson(Map<String, dynamic> json) =>
      _$VisaApplicationFromJson(json);
}

List<VisaApplication> visaApps = [
  VisaApplication(
      id: "1",
      duration: "30 days",
      status: "pending",
      applicant: Applicant(
        firstName: "User1",
        lastName: "User1",
        id: "1",
        nationality: "Syrian",
      ),
      documents: [
        Document(
          type: "passport",
          filePath: "images/passport.png",
        ),
        Document(
          type: "National ID",
          filePath: "images/nationalityId.png",
        ),
        Document(
          type: "photo",
          filePath: "images/man.png",
        ),
      ],
      date: "2024-01-01",
      paymentStatus: "paid",
      type: "new"),
  VisaApplication(
      id: "2",
      duration: "14 days",
      status: "ongoing",
      applicant: Applicant(
        firstName: "User2",
        lastName: "User2",
        id: "2",
        nationality: "UAE",
      ),
      date: "2023-11-11",
      type: "renewal (in country)",
      paymentStatus: "not-paid",
      documents: [
        Document(
          type: "passport",
          filePath: "images/passport.png",
        ),
        Document(
            type: "previous_visa",
            filePath: "images/visa.png",
            visaType: 'A2A',
            date: '01-04-2024',
            duration: '14 days'),
        Document(
          type: "photo",
          filePath: "images/man.png",
        )
      ]),
  VisaApplication(
      id: "3",
      duration: "90 days",
      status: "pending",
      applicant: Applicant(
        firstName: "User3",
        lastName: "User3",
        id: "3",
        nationality: "Syrian",
      ),
      date: "2023-12-12",
      type: "extension",
      paymentStatus: "paid",
      documents: [
        Document(
          type: "passport",
          filePath: "images/passport.png",
        ),
        Document(
          type: "previous_visa",
          filePath: "images/visa.png",
        ),
        Document(
          type: "photo",
          filePath: "images/man.png",
        )
      ]),
  VisaApplication(
      id: "4",
      duration: "30 days",
      status: "ongoing",
      paymentStatus: "not-paid",
      applicant: Applicant(
        firstName: "User4",
        lastName: "User4",
        id: "4",
        nationality: "Pakistan",
      ),
      date: "2023-12-12",
      type: "new",
      documents: [
        Document(
          type: "passport",
          filePath: "images/passport.png",
        ),
        Document(
          type: "Visa",
          filePath: "images/nationalityId.png",
        ),
        Document(
          type: "photo",
          filePath: "images/man.png",
        )
      ]),
  VisaApplication(
      id: "5",
      duration: "30 days",
      status: "ongoing",
      applicant: Applicant(
        firstName: "User4",
        lastName: "User4",
        id: "4",
        nationality: "Pakistan",
      ),
      date: "2023-12-12",
      type: "new",
      documents: [
        Document(
          type: "passport",
          filePath: "images/passport.png",
        ),
        Document(
          type: "previous_visa",
          filePath: "images/nationalityId.png",
        ),
        Document(
          type: "photo",
          filePath: "images/man.png",
        )
      ]),
  VisaApplication(
      id: "4",
      duration: "30 days",
      status: "ongoing",
      applicant: Applicant(
        firstName: "User4",
        lastName: "User4",
        id: "4",
        nationality: "Pakistan",
      ),
      date: "2023-12-12",
      type: "new",
      documents: [
        Document(
          type: "passport",
          filePath: "images/passport.png",
        ),
        Document(
          type: "National Id",
          filePath: "images/nationalityId.png",
        ),
        Document(
          type: "photo",
          filePath: "images/man.png",
        )
      ]),
  VisaApplication(
      id: "6",
      duration: "30 days",
      status: "ongoing",
      applicant: Applicant(
        firstName: "User4",
        lastName: "User4",
        id: "4",
        nationality: "Pakistan",
      ),
      date: "2023-12-12",
      type: "new",
      documents: [
        Document(
          type: "passport",
          filePath: "images/passport.png",
        ),
        Document(
          type: "National Id",
          filePath: "images/nationalityId.png",
        ),
        Document(
          type: "photo",
          filePath: "images/man.png",
        )
      ]),
  VisaApplication(
      id: "8",
      duration: "14 days",
      status: "completed",
      applicant: Applicant(
        firstName: "User4",
        lastName: "User4",
        id: "4",
        nationality: "Lebanese",
      ),
      date: "2023-12-12",
      type: "renewal (A2A)",
      documents: [
        Document(
          type: "passport",
          filePath: "images/passport.png",
        ),
        Document(
            type: "previous_visa",
            filePath: "images/visa.png",
            visaType: 'A2A',
            date: '01-04-2024',
            duration: '14 days'),
        Document(
          type: "photo",
          filePath: "images/man.png",
        )
      ]),
  VisaApplication(
      id: "7",
      duration: "30 days",
      status: "ongoing",
      applicant: Applicant(
        firstName: "User4",
        lastName: "User4",
        id: "4",
        nationality: "Indian",
      ),
      date: "2023-12-12",
      type: "renewal (A2A)",
      documents: [
        Document(
          type: "passport",
          filePath: "images/passport.png",
        ),
        Document(
            type: "previous_visa",
            filePath: "images/visa.png",
            visaType: 'A2A',
            date: '01-04-2024',
            duration: '14 days'),
        Document(
          type: "photo",
          filePath: "images/man.png",
        )
      ]),
  VisaApplication(
      id: "8",
      duration: "30 days",
      status: "completed",
      applicant: Applicant(
        firstName: "User4",
        lastName: "User4",
        id: "4",
        nationality: "Syrian",
      ),
      date: "2023-12-12",
      type: "renewal (A2A)",
      documents: [
        Document(
          type: "passport",
          filePath: "images/passport.png",
        ),
        Document(
            type: "previous_visa",
            filePath: "images/visa.png",
            visaType: 'A2A',
            date: '01-04-2024',
            duration: '14 days'),
        Document(
          type: "photo",
          filePath: "images/man.png",
        )
      ]),
  VisaApplication(
      id: "9",
      duration: "30 days",
      status: "completed",
      applicant: Applicant(
        firstName: "User",
        lastName: "User",
        id: "4",
        nationality: "Indian",
      ),
      date: "2023-12-12",
      type: "new",
      documents: [
        Document(
          type: "passport",
          filePath: "images/passport.png",
        ),
        Document(
            type: "previous_visa",
            filePath: "images/visa.png",
            visaType: 'A2A',
            date: '01-04-2024',
            duration: '14 days'),
        Document(
          type: "photo",
          filePath: "images/man.png",
        )
      ]),
  VisaApplication(
      id: "7",
      duration: "30 days",
      status: "ongoing",
      applicant: Applicant(
        firstName: "User4",
        lastName: "User4",
        id: "4",
        nationality: "Indian",
      ),
      date: "2023-12-12",
      type: "renewal (A2A)",
      documents: [
        Document(
          type: "passport",
          filePath: "images/passport.png",
        ),
        Document(
            type: "previous_visa",
            filePath: "images/visa.png",
            visaType: 'A2A',
            date: '01-04-2024',
            duration: '14 days'),
        Document(
          type: "photo",
          filePath: "images/man.png",
        )
      ]),
  VisaApplication(
      id: "8",
      duration: "30 days",
      status: "completed",
      applicant: Applicant(
        firstName: "User4",
        lastName: "User4",
        id: "4",
        nationality: "Syrian",
      ),
      date: "2023-12-12",
      type: "renewal (A2A)",
      documents: [
        Document(
          type: "passport",
          filePath: "images/passport.png",
        ),
        Document(
            type: "previous_visa",
            filePath: "images/visa.png",
            visaType: 'A2A',
            date: '01-04-2024',
            duration: '14 days'),
        Document(
          type: "photo",
          filePath: "images/man.png",
        )
      ]),
  VisaApplication(
      id: "9",
      duration: "30 days",
      status: "completed",
      applicant: Applicant(
        firstName: "User",
        lastName: "User",
        id: "4",
        nationality: "Indian",
      ),
      date: "2023-12-12",
      type: "new",
      documents: [
        Document(
          type: "passport",
          filePath: "images/passport.png",
        ),
        Document(
            type: "previous_visa",
            filePath: "images/visa.png",
            visaType: 'A2A',
            date: '01-04-2024',
            duration: '14 days'),
        Document(
          type: "photo",
          filePath: "images/man.png",
        )
      ]),
  VisaApplication(
      id: "7",
      duration: "30 days",
      status: "ongoing",
      applicant: Applicant(
        firstName: "User4",
        lastName: "User4",
        id: "4",
        nationality: "Indian",
      ),
      date: "2023-12-12",
      type: "renewal (A2A)",
      documents: [
        Document(
          type: "passport",
          filePath: "images/passport.png",
        ),
        Document(
            type: "previous_visa",
            filePath: "images/visa.png",
            visaType: 'A2A',
            date: '01-04-2024',
            duration: '14 days'),
        Document(
          type: "photo",
          filePath: "images/man.png",
        )
      ]),
  VisaApplication(
      id: "8",
      duration: "30 days",
      status: "completed",
      applicant: Applicant(
        firstName: "User4",
        lastName: "User4",
        id: "4",
        nationality: "Syrian",
      ),
      date: "2023-12-12",
      type: "renewal (A2A)",
      documents: [
        Document(
          type: "passport",
          filePath: "images/passport.png",
        ),
        Document(
            type: "previous_visa",
            filePath: "images/visa.png",
            visaType: 'A2A',
            date: '01-04-2024',
            duration: '14 days'),
        Document(
          type: "photo",
          filePath: "images/man.png",
        )
      ]),
  VisaApplication(
      id: "9",
      duration: "30 days",
      status: "completed",
      applicant: Applicant(
        firstName: "User",
        lastName: "User",
        id: "4",
        nationality: "Indian",
      ),
      date: "2023-12-12",
      type: "new",
      documents: [
        Document(
          type: "passport",
          filePath: "images/passport.png",
        ),
        Document(
            type: "previous_visa",
            filePath: "images/visa.png",
            visaType: 'A2A',
            date: '01-04-2024',
            duration: '14 days'),
        Document(
          type: "photo",
          filePath: "images/man.png",
        )
      ]),
];
