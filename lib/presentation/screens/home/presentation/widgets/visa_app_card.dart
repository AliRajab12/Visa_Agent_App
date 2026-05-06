import 'package:flutter/material.dart';
import 'package:visa_agent_app/presentation/screens/home/data/models/visa_application.dart';
import '../../../../../core/main_router.dart';
import '../../../../../core/service_locator.dart';

class VisaAppCard extends StatelessWidget {
  final VisaApplication visaApplication;
  const VisaAppCard({super.key, required this.visaApplication});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        locator<MainRouter>().navigate(VisaApplicationDetailsScreenRoute(
            visaApplication: visaApplication));
      },
      child: Container(
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.shade300, blurRadius: 3, spreadRadius: 0.2)
            ]),
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Row(
                  children: [
                    const Text(
                      'Type:',
                      style: TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                    const SizedBox(
                      width: 6,
                    ),
                    Expanded(
                      child: Text(
                        visaApplication.type.toUpperCase(),
                        style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                      ),
                    )
                  ],
                ),
              ),
              Text(
                visaApplication.status.toUpperCase(),
                style: const TextStyle(fontWeight: FontWeight.w500),
              )
            ],
          ),
          Row(
            children: [
              const Text(
                'Applicant Nationality:',
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
              const SizedBox(
                width: 6,
              ),
              Expanded(
                child: Text(
                  visaApplication.applicant.nationality.toUpperCase(),
                  style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontSize: 14,
                      fontWeight: FontWeight.w500),
                ),
              )
            ],
          ),
          Row(
            children: [
              const Text(
                'Submitting Date:',
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
              const SizedBox(
                width: 6,
              ),
              Text(
                visaApplication.date,
                style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: 14,
                    fontWeight: FontWeight.w500),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const Text(
                    'Duration:',
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                  const SizedBox(
                    width: 6,
                  ),
                  Text(
                    visaApplication.duration.toUpperCase(),
                    style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontSize: 14,
                        fontWeight: FontWeight.w500),
                  )
                ],
              ),
              const Row(
                children: [
                  Text(
                    "More",
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Icon(Icons.read_more_rounded)
                ],
              )
            ],
          ),
        ]),
      ),
    );
  }
}
