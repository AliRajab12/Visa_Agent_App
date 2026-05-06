import 'package:flutter/material.dart';
import 'package:visa_agent_app/core/theme/colors.dart';

class StackAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget title;
  final VoidCallback onBackButtonPressed;
  final VoidCallback onHomeButtonPressed;
  final Color backgroundColor;
  final bool? homeButton;
  final Widget? leading;
  final Widget? action;
  const StackAppBar({
    super.key,
    required this.title,
    this.action,
    required this.onBackButtonPressed,
    required this.onHomeButtonPressed,
    this.backgroundColor = SomiColors.background,
    this.homeButton,
    this.leading,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AppBar(
          elevation: 0,
          backgroundColor: backgroundColor,
          toolbarHeight: kToolbarHeight + 16,
          titleSpacing: 0,
          centerTitle: true,
          leading: Container(
            margin: const EdgeInsets.symmetric(horizontal: 11, vertical: 16),
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.grey.shade600)),
            child: IconButton(
              icon: Icon(
                Icons.chat_bubble_outline_outlined,
                color: Colors.grey.shade600,
                size: 16,
              ),
              onPressed: onBackButtonPressed,
            ),
          ),
          actions: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 18),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.grey.shade600)),
              child: IconButton(
                icon: Icon(
                  Icons.notifications_active_outlined,
                  color: Colors.grey.shade600,
                  size: 20,
                ),
                onPressed: onHomeButtonPressed,
              ),
            ),
          ],
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 35);
}
