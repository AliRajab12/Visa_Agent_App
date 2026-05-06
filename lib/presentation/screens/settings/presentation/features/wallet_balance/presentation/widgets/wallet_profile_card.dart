import 'package:flutter/material.dart';
import 'package:visa_agent_app/core/theme/text_styles.dart';

class WalletProfileCard extends StatelessWidget {
  final String title;
  final String earnings;
  final Color cardColor;
  const WalletProfileCard({
    super.key,
    required this.earnings,
    required this.cardColor,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 25, horizontal: 15),
      padding: const EdgeInsets.all(35),
      decoration: BoxDecoration(
          color: cardColor.withOpacity(0.2),
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                color: cardColor.withOpacity(0.2),
                spreadRadius: 2,
                blurRadius: 2,
                offset: const Offset(0, 6))
          ]),
      child: Column(children: [
        Text(
          title,
          style: kSectionTitle,
        ),
        SizedBox(
          height: MediaQuery.sizeOf(context).height * 0.03,
        ),
        Text(earnings, style: kSectionTitle.copyWith(fontSize: 19))
      ]),
    );
  }
}
