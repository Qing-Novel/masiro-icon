import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

extension ContextUtils on BuildContext {
  AppLocalizations localizations() {
    return AppLocalizations.of(this)!;
  }

  ThemeData theme() {
    return Theme.of(this);
  }

  TextTheme textTheme() {
    return Theme.of(this).textTheme;
  }
}