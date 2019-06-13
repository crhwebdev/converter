import 'dart:io';
import 'package:prompter_crh/prompter_crh.dart';

void main() {
  final prompter = Prompter();

  final choice = prompter.askBinary('Are you here to convet an image?');

  if (!choice) {
    exit(0);
  }

  final format = prompter.askMultiple('Select format:', buildFormatOptions());
  // prompter.askMultiple('Select an image to convert:', buildFileOptions())
  buildFileOptions();
}

List<Option> buildFormatOptions() {
  return [
    Option('Convert to jpeg', 'jpeg'),
    Option('Convert to png', 'png'),
  ];
}

List<Option> buildFileOptions() {
  // Get a reference to the current working directory
  final currentDirectory = Directory.current;

  // Find all the files and folders in this directory
  final entities = currentDirectory.listSync();
  print(entities);

  // Look through that list and find only the *images*

  // Take all the images and created an option object out of each
}
