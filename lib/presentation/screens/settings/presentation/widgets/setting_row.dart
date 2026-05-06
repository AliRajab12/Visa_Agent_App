import 'package:flutter/material.dart';

class SettingRow extends StatelessWidget {
  final String title;
  final bool? divider;
  final VoidCallback? press;
  const SettingRow({
    super.key,
    required this.title,
    this.divider,
    this.press,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsetsDirectional.symmetric(horizontal: 16, vertical: 12),
      child: Column(
        children: [
          InkWell(
            onTap: () => press!(),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                      fontWeight: FontWeight.w600, fontSize: 16),
                ),
                const Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Colors.grey,
                  size: 16,
                )
              ],
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          divider != null && divider == true
              ? Padding(
                  padding: const EdgeInsetsDirectional.symmetric(horizontal: 6),
                  child: Container(
                    height: 0.2,
                    color: Colors.grey,
                    width: MediaQuery.of(context).size.width,
                  ),
                )
              : const SizedBox()
        ],
      ),
    );
  }
}
