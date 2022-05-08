import 'package:flutter/cupertino.dart';

enum StatusType { rich, poor, professor, none, about }

class Status {
  StatusType type;
  String name;
  String description;
  String? imagePath;

  Status({required this.type, required this.name, required this.description, this.imagePath});
}
