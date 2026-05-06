import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:visa_agent_app/presentation/common/widgets/custom_rounded_button.dart';
import 'package:visa_agent_app/presentation/screens/settings/presentation/widgets/language_card.dart';
@RoutePage()
class LanguageScreen extends StatefulWidget {
  const LanguageScreen({super.key});

  @override
  State<LanguageScreen> createState() => _LanguageScreenState();
}

class _LanguageScreenState extends State<LanguageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Supported Languages',style: TextStyle(
          fontSize: 20,fontWeight: FontWeight.w500
        ),
        ),
        centerTitle: true,
      ),
      body: const Column(
        children: [
          SizedBox(height: 24,),
          LanguageRow(language: 'Arabic',),
          LanguageRow(language: 'English',),
        ],
      ),
       bottomNavigationBar:  Padding(
         padding: const EdgeInsets.all(16.0),
         child: CustomRoundedButton(
           text: 'Save',
            pressed: (){
             Navigator.pop(context);
            },
         ),
       ),
    );
  }
}
