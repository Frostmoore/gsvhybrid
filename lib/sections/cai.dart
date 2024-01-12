import 'package:flutter/material.dart';
import 'package:agenzia_x/assets/constants.dart' as constants;

class Cai extends StatefulWidget {
  const Cai({super.key});

  @override
  State<Cai> createState() => _CaiState();
}

class _CaiState extends State<Cai> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        const Text(
          constants.TESTOCAI,
          textAlign: TextAlign.center,
        ),
        constants.SPACER,
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            width: width,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton.icon(
                onPressed: () => constants.openUrl(constants.CAI_LINK),
                label: const Text(constants.LABEL_BOTTONE_CAI),
                style: constants.STILE_BOTTONE,
                icon: const Icon(Icons.edit_document),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
