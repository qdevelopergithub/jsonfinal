import 'dart:async' show Future;
import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;
import 'sample_model.dart';


Future<String> _loadAStudentAsset() async {
  return await rootBundle.loadString('assets/samplejson.json');
}


Future loadStudent() async {
  String jsonString = await _loadAStudentAsset();
  final jsonResponse = json.decode(jsonString);
  Sample sample = new Sample.fromJson(jsonResponse);
  print(sample.ideas.parentNode.title);
  print(sample.ideas.parentNode.id);
  print(sample.ideas.parentNode.ideas.childnode1.title);
  print(sample.ideas.parentNode.ideas.childnode1.id);
  print(sample.ideas.parentNode.ideas.childnode2.title);
  print(sample.ideas.parentNode.ideas.childnode2.id);
}