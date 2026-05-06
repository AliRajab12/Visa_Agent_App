import 'package:flutter/material.dart';
import 'package:visa_agent_app/presentation/screens/settings/presentation/features/payment_details/data/payment_profile.dart';

class PaymentProfileCard extends StatelessWidget {
  final PaymentProfile paymentProfile;
  const PaymentProfileCard({super.key, required this.paymentProfile});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.shade300, blurRadius: 3, spreadRadius: 0.2)
          ]),
      child: Column(children: [
        Row(
          children: [
            const Text(
              'Full Name:',
            ),
            const SizedBox(
              width: 6,
            ),
            Expanded(
              child: Text(
                "${paymentProfile.applicant.firstName.toUpperCase()} ${paymentProfile.applicant.lastName.toUpperCase()}",
                style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.w500),
              ),
            )
          ],
        ),
        Row(
          children: [
            const Text(
              'Nationality: ',
            ),
            const SizedBox(
              width: 6,
            ),
            Expanded(
              child: Text(
                paymentProfile.applicant.nationality.toUpperCase(),
                style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.w500),
              ),
            )
          ],
        ),
        Row(
          children: [
            const Text(
              'Visa Status: ',
            ),
            const SizedBox(
              width: 6,
            ),
            Expanded(
              child: Text(
                paymentProfile.visaAppStatus.toUpperCase(),
                style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.w500),
              ),
            )
          ],
        ),
        Row(
          children: [
            const Text(
              'Payment Status: ',
            ),
            const SizedBox(
              width: 6,
            ),
            Expanded(
              child: Text(
                paymentProfile.paymentStatus.toUpperCase(),
                style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.w500),
              ),
            )
          ],
        ),
      ]),
    );
  }
}
