import 'package:flutter/material.dart';
import 'package:plants_and_plans_mobile/app/app.dart';

Future<void> bootstrap() async{
  //there will be stuff here at some point
  WidgetsFlutterBinding.ensureInitialized();
}

void main() async{
  await bootstrap();
  runApp(const PlantsAndPlansMobileApp());
}
