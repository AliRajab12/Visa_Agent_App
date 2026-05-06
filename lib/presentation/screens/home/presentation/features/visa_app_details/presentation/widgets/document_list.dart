import 'package:flutter/material.dart';
import 'package:visa_agent_app/core/widgets/adaptive_alert_dialog.dart';
import 'package:visa_agent_app/presentation/screens/home/data/models/visa_application.dart';
import 'package:visa_agent_app/presentation/screens/home/presentation/features/visa_app_details/presentation/widgets/custom_row.dart';

class DocumentList extends StatelessWidget {
  final VisaApplication visaApplication;
  const DocumentList({super.key, required this.visaApplication});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 2,
                blurRadius: 2,
                offset: const Offset(2, 4))
          ]),
      child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: ListView.builder(
              itemCount: visaApplication.documents.length,
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Text(
                              visaApplication.documents[index].type,
                              style: const TextStyle(color: Colors.grey),
                            ),
                          ),
                          if (visaApplication.status != "completed") ...[
                            SizedBox(
                              width: 30,
                              height: 30,
                              child: IconButton.outlined(
                                tooltip: "Notify the client to change the file",
                                onPressed: () {
                                  showDegreedAdaptiveDialog(
                                    context,
                                    (context) => AdaptiveAlertDialog(
                                      title: Text(
                                          'Are you sure you want to notify the client to change ${visaApplication.documents[index].type} file'),
                                      actions: [
                                        DialogAction(
                                          label: 'Cancel',
                                          isDefaultAction: true,
                                          onPressed: () {},
                                        ),
                                        DialogAction(
                                          label: 'Ok',
                                          isDefaultAction: true,
                                          onPressed: () {},
                                        ),
                                      ],
                                    ),
                                  );
                                },
                                icon: const FittedBox(
                                  child: Icon(
                                    Icons.edit,
                                  ),
                                ),
                              ),
                            )
                          ]
                        ],
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      visaApplication.type == "new"
                          ? const SizedBox()
                          : visaApplication.documents[index].visaType != ''
                              ? Column(
                                  children: [
                                    CustomRow(
                                        title: 'Visa type',
                                        value: visaApplication.documents[index]
                                                    .visaType ==
                                                'Inc'
                                            ? 'Inside country'
                                            : 'Airport to airport'),
                                    visaApplication.documents[index].date != ''
                                        ? CustomRow(
                                            title: 'Date',
                                            value: visaApplication
                                                .documents[index].date)
                                        : const SizedBox(),
                                    CustomRow(
                                        title: 'Duration',
                                        value: visaApplication
                                            .documents[index].duration),
                                  ],
                                )
                              : const SizedBox(),
                      Center(
                        child: Image.asset(
                          visaApplication.documents[index].filePath,
                          width: MediaQuery.of(context).size.width / 2,
                        ),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      index < visaApplication.documents.length - 1
                          ? const Divider(
                              color: Colors.grey,
                            )
                          : const SizedBox()
                    ],
                  ),
                );
              })),
    );
  }
}
