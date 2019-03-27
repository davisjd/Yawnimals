import 'package:animal_names/animal_names.dart';
import 'dart:math';

int yawns = 0;
double pitch = 1.0;

List<String> animals = all_animals;

final _random = new Random();

var element = all_animals[_random.nextInt(all_animals.length)];

setState() {
  element = all_animals[_random.nextInt(all_animals.length)].toUpperCase();
  yawns++;
}
