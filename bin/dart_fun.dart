import 'dart:io';
import 'package:dart_fun/dart_fun.dart' as dart_fun;

void main() {
  // TYPE ANNOTATIONS
  // final: single assignment of variable; cannot reassign variable
  // note: reach for final first, then var
  final artifactName = 'Ark of the Covenant';
  final artifactDescription = 'a large, overpriced, empty box';
  print('The variable \'artifactName\' is a ${artifactName.runtimeType}.');

  // const: copmiled constants
  const multiplier = 100;

  // var: declares variable and Dart will infer datatype
  var length = artifactName.length;
  var price = 0;
  price = multiplier * length;
  print('The $artifactName is $artifactDescription and costs $price.');

  // CONDITIONAL STATEMENTS
  // Dart uses if...else if...else syntax

  // LOOPS
  // Darts loops with while and for loops
  print(
    'Let\'s go on an adventure!\n'
    'Shall I randomly choose a planet for you to visit? (Y or N)'
  );

  while (true) {
    var answer = stdin.readLineSync();
    if (answer == 'Y') {
      print(
        'Ok! Traveling to Mercury...\n'
        'Arrived at Mercury. A very hot planet, closest to the sun.'
      );
    } else if (answer == 'N') {
      print('Name the planet you would like to visit.');
      final planetName = stdin.readLineSync();
      print(
        'Traveling to $planetName...\n'
        'Arrived at $planetName. A very cold planet, furthest from the sun.'
      );
    } else {
      print('Sorry, I didn\'t get that.');
    }
  }
}

