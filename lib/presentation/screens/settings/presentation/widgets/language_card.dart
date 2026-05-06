import 'package:flutter/material.dart';

class LanguageRow extends StatefulWidget {
  final String language;
  const LanguageRow({super.key, required this.language});

  @override
  State<LanguageRow> createState() => _LanguageRowState();
}

class _LanguageRowState extends State<LanguageRow> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.symmetric(horizontal: 16,
      vertical: 8),
      child: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.white,
          border: Border.all(
            color: Colors.grey
          )
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              Text(widget.language)
            ],
          ),
        ),
      ),
    );
  }
}
