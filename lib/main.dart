import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'internal/application.dart';

void main() async{

  await Hive.initFlutter();

  await Hive.openBox("workout_database1");
  
  runApp(const MyApp());
}