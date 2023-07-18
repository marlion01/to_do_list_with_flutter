import 'package:flutter/material.dart';
import 'src/app.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
final memotitleStateProvider=StateProvider.autoDispose((ref) {
  return TextEditingController(text: '');
});
void main() {
  runApp(
      const ProviderScope(
        child:MyApp(),
      )
  );
}

