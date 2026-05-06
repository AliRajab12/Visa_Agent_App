import 'package:flutter/material.dart';

import '../../../../../data/models/visa_application.dart';
import 'custom_row.dart';

class VisaInfo extends StatelessWidget {
  final VisaApplication visaApplication;
  const VisaInfo({super.key, required this.visaApplication});

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
            CustomRow(title: 'ID', value: visaApplication.id),
            Row(
              children: [
                CustomRow(
                    title: 'Visa duration', value: visaApplication.duration),
                if (visaApplication.status != "completed") ...[
                  SizedBox(
                    width: 30,
                    height: 30,
                    child: IconButton.outlined(
                      onPressed: () {},
                      icon: const FittedBox(
                        child: Icon(
                          Icons.edit,
                        ),
                      ),
                    ),
                  )
                ]
              ],
            ),
            CustomRow(title: 'Date', value: visaApplication.date),
            CustomRow(title: 'Status', value: visaApplication.status),
          ],
        ),
      ),
    );
  }
}
