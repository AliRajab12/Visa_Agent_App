import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:visa_agent_app/core/theme/colors.dart';
import 'package:visa_agent_app/presentation/common/widgets/custom_rounded_button.dart';
import 'package:visa_agent_app/presentation/screens/chat/widget/chat_card.dart';

import '../../../core/main_router.dart';
import '../../../core/service_locator.dart';
import '../../common/widgets/custom_text_field.dart';

@RoutePage()
class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Conversations',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomTextField(
                hintText: 'Search',
              ),
              Stack(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height - 180,
                    child: ListView.builder(
                        itemCount: 12,
                        itemBuilder: (context, index) {
                          return const ChatCard();
                        }),
                  ),
                  Positioned(
                      bottom: 24,
                      left: 0,
                      right: 0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomRoundedButton(
                            width: MediaQuery.of(context).size.width / 2,
                            height: 40,
                            text: 'Chat with Yassel',
                            pressed: () {
                              locator<MainRouter>().navigate(
                                  ChatMessageScreenRoute(title: 'visa_agent'));
                            },
                            backgroundColor: SomiColors.blue,
                          ),
                        ],
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
