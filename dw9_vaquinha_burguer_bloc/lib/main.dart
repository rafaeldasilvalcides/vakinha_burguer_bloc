import 'package:dw9_vaquinha_burguer_bloc/app/app_delivery.dart';
import 'package:dw9_vaquinha_burguer_bloc/core/config/env/env.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  
  await Env.instance.load();

  runApp(const AppDelivery());
} 
