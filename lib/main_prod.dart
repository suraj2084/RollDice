import 'package:flavor_demo/config_flavors.dart';
import 'package:flutter/material.dart';

void main() {
  FlavorConfig.setUpEnv(Environment.prod);
  runApp(const MaterialApp(
    home: Center(child: Text("data production")),
  ));
}
