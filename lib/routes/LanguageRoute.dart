

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_github/states/LocaleModel.dart';
import 'package:provider/provider.dart';

class LanguageRoute extends StatelessWidget {
  const LanguageRoute({super.key});

  @override
  Widget build(BuildContext context) {
    var color = Theme.of(context).primaryColor;
    var localModel = Provider.of<LocaleModel>(context);
    return const Text("");
  }

}