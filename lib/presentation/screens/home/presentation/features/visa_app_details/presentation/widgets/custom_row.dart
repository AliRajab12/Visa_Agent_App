import 'package:flutter/material.dart';

import '../../../../../../../../core/theme/colors.dart';

class CustomRow extends StatelessWidget {
  final String title;
  final String value;
  const CustomRow({super.key, required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.symmetric(horizontal: 12),
      child: Row(
        children: [
          Text(
            '$title :',
            style: const TextStyle(fontSize: 16, color: Colors.grey),
          ),
          const SizedBox(
            width: 6,
          ),
          Text(
            value,
            style: const TextStyle(
                color: SomiColors.blue,
                fontSize: 14,
                fontWeight: FontWeight.w500),
          )
        ],
      ),
    );
  }
}
