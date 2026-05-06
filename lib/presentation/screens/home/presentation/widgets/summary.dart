import 'package:flutter/material.dart';

class Summary extends StatelessWidget {
  const Summary({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Container(
                height: MediaQuery.sizeOf(context).height * 0.15,
                color: Colors.green,
                padding: const EdgeInsets.all(15),
                child: const FittedBox(
                  child: Center(
                      child: Text(
                    "Pending\n 15",
                    textAlign: TextAlign.center,
                  )),
                ),
              ),
            ),
            const SizedBox(
              width: 8,
            ),
            Expanded(
              child: Container(
                height: MediaQuery.sizeOf(context).height * 0.15,
                color: Colors.green,
                padding: const EdgeInsets.all(15),
                child: const FittedBox(
                  child: Center(
                      child: Text(
                    "Ongoing\n 25",
                    textAlign: TextAlign.center,
                  )),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 8,
        ),
        Row(
          children: [
            Expanded(
              child: Container(
                height: MediaQuery.sizeOf(context).height * 0.15,
                color: Colors.green,
                padding: const EdgeInsets.all(15),
                child: const FittedBox(
                  child: Center(
                      child: Text(
                    "Completed\n 35",
                    textAlign: TextAlign.center,
                  )),
                ),
              ),
            ),
            const SizedBox(
              width: 8,
            ),
            Expanded(
              child: Container(
                height: MediaQuery.sizeOf(context).height * 0.15,
                color: Colors.green,
                padding: const EdgeInsets.all(15),
                child: const FittedBox(
                  child: Center(
                      child: Text(
                    "All\n 45",
                    textAlign: TextAlign.center,
                  )),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
