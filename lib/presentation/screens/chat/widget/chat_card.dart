import 'package:flutter/material.dart';

import '../../../../core/main_router.dart';
import '../../../../core/service_locator.dart';

class ChatCard extends StatefulWidget {
  const ChatCard({super.key});

  @override
  State<ChatCard> createState() => _ChatCardState();
}

class _ChatCardState extends State<ChatCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.symmetric(
        vertical: 4
      ),
      child: InkWell(
        onTap: (){
          locator<MainRouter>().navigate(
              ChatMessageScreenRoute(title: 'User'));
        },
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: Colors.grey.withOpacity(0.2),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.1),
                spreadRadius: 2,
                blurRadius: 2,
                offset: const Offset(2,4)
              )
            ]
          ),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              children: [
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle
                  ,
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.black,
                      width: 3
                    )
                  ),
                ),
                const SizedBox(width: 6,),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('User name'),
                    Text('Last message',style: TextStyle(
                      fontSize: 12
                    ),),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
