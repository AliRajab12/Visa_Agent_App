import 'package:flutter/material.dart';

import '../../data/models/applicant.dart';
import '../features/visa_app_details/presentation/widgets/custom_row.dart';

class UserInfo extends StatelessWidget {
  final Applicant applicant;
  const UserInfo({super.key, required this.applicant});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 2,
                blurRadius: 2,
                offset: const Offset(2, 4))
          ]),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            CustomRow(title: 'ID', value: applicant.id),
            CustomRow(title: 'First Name', value: applicant.firstName),
            CustomRow(title: 'Last Name', value: applicant.lastName),
            CustomRow(title: 'Nationality', value: applicant.nationality),
          ],
        ),
      ),
    );
  }
}
