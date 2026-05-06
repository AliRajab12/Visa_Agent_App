import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../common/widgets/custom_text_field.dart';

@RoutePage()
class ChatMessageScreen extends StatefulWidget {
  final String title;
  const ChatMessageScreen({super.key, required this.title});

  @override
  State<ChatMessageScreen> createState() => _ChatMessageScreenState();
}

class _ChatMessageScreenState extends State<ChatMessageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      bottomNavigationBar: Padding(
        padding: MediaQuery.of(context).viewInsets,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              Expanded(
                child: CustomTextField(
                  hintText: '...',
                ),
              ),
              const Padding(
                padding: EdgeInsetsDirectional.only(start: 8),
                child:Icon(
                  Icons.send,
                  color: Colors.black,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
