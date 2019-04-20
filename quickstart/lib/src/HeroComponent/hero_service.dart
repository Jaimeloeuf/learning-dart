import 'package:angular_app/src/HeroComponent/hero.dart';
import 'mock_hero.dart';

class HeroService {
  List<Hero> getAll() => mockHeroes;
}
