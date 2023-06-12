import 'package:flutter/material.dart';
import 'package:flavor_demo/config_flavors.dart';

void main() {
  FlavorConfig.setUpEnv(Environment.dev);
  runApp(const MaterialApp(
    home: Center(child: Text("data dev")),
  ));
}
