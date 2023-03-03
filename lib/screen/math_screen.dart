import 'package:flutter/material.dart';
import 'package:taller/widget/widget.dart';

import '../generated/l10n.dart';

class MathScreen extends StatelessWidget {
  const MathScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarOption(text: AppLocalizations.of(context).mat1),
      body: Center(
        child: Text(AppLocalizations.of(context).mat1),
      ),
    );
  }
}
