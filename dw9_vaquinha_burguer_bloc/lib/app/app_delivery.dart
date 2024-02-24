import 'package:dw9_vaquinha_burguer_bloc/pages/splash/splash_page.dart';
import 'package:flutter/material.dart';

class AppDelivery extends StatelessWidget {

  const AppDelivery({ super.key });

   @override
   Widget build(BuildContext context) {
       return MaterialApp(
        title: 'Vakinha Burguer',
        routes: {
          '/':(context) => const SplashPage()
        },
       );
  }
}