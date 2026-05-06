import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:visa_agent_app/presentation/screens/home/presentation/features/visa_app_details/presentation/widgets/document_list.dart';
import 'package:visa_agent_app/presentation/screens/home/presentation/features/visa_app_details/presentation/widgets/payment_info.dart';
import 'package:visa_agent_app/presentation/screens/home/presentation/widgets/user_info.dart';
import 'package:visa_agent_app/presentation/screens/home/presentation/features/visa_app_details/presentation/widgets/visa_info.dart';
import '../../../../../../common/widgets/custom_rounded_button.dart';
import '../../../../data/models/visa_application.dart';

@RoutePage()
class VisaApplicationDetailsScreen extends StatefulWidget {
  final VisaApplication visaApplication;
  const VisaApplicationDetailsScreen(
      {super.key, required this.visaApplication});

  @override
  State<VisaApplicationDetailsScreen> createState() =>
      _VisaApplicationDetailsScreenState();
}

class _VisaApplicationDetailsScreenState
    extends State<VisaApplicationDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Visa application details'),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Visa info',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: 4,
                ),
                VisaInfo(visaApplication: widget.visaApplication),
                const SizedBox(
                  height: 24,
                ),
                const Text('User info',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
                const SizedBox(
                  height: 4,
                ),
                UserInfo(applicant: widget.visaApplication.applicant),
                const SizedBox(
                  height: 24,
                ),
                const Text('Payment info',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
                const SizedBox(
                  height: 4,
                ),
                PaymentInfo(
                    paymentStatus: widget.visaApplication.paymentStatus),
                const SizedBox(
                  height: 24,
                ),
                const Text('Documents',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
                const SizedBox(
                  height: 4,
                ),
                DocumentList(
                  visaApplication: widget.visaApplication,
                )
              ],
            ),
          ),
        ),
        bottomNavigationBar: (widget.visaApplication.status != "completed")
            ? Padding(
                padding: const EdgeInsetsDirectional.symmetric(
                    horizontal: 16, vertical: 4),
                child: CustomRoundedButton(
                  text: widget.visaApplication.status,
                ),
              )
            : const SizedBox.shrink());
  }
}
