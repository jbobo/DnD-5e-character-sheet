import 'package:flutter/foundation.dart';

class Character {
  //Constructor
  const Character({
    @required this.name,
  }) :assert(name != null, 'Name must not be null.');

  final String name;

  String get characterName => '$name';

  @override String toString() => '$name';
}
