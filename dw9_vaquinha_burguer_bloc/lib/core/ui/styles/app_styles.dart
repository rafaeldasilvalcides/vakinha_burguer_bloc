import 'package:dw9_vaquinha_burguer_bloc/core/ui/styles/colors_app.dart';
import 'package:dw9_vaquinha_burguer_bloc/core/ui/styles/text_styles.dart';
import 'package:flutter/material.dart';

class AppStyles {
  static AppStyles? _instance;

  AppStyles._();

  static AppStyles get instance => _instance ??= AppStyles._();

  ButtonStyle get primaryButton => ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(7),
        ),
        backgroundColor: ColorsApp.instance.primary,
        textStyle: TextStyles.instance.textButtonLabel,
      );
}

extension AppStylesExtencions on BuildContext {
  AppStyles get appStyles => AppStyles.instance;
}
