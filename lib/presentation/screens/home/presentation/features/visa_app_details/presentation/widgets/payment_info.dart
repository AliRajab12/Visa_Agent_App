import 'package:flutter/material.dart';
import 'custom_row.dart';

class PaymentInfo extends StatelessWidget {
  final String  paymentStatus;
  const PaymentInfo({super.key, required this.paymentStatus});

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
                offset: const Offset(2,4)
            )
          ]
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            CustomRow(title:'Payment status',value:paymentStatus),
          ],
        ),
      ) ,
    );
  }
}
