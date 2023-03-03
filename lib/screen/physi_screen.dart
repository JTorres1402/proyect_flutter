import 'package:flutter/material.dart';
import 'package:taller/widget/widget.dart';

import '../generated/l10n.dart';

class PhysiScreen extends StatelessWidget {
  const PhysiScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarOption(text: AppLocalizations.of(context).mat2),
      body: Center(
        child: Text(AppLocalizations.of(context).mat2),
      ),
    );
  }
}
