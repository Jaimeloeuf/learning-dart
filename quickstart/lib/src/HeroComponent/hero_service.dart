import 'dart:async';
import 'package:angular_app/src/hero.dart';
import 'package:angular_app/src/mock_hero.dart';

class HeroService {
  Future<List<Hero>> getAll() async => mockHeroes;
}
