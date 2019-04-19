import 'package:angular/angular.dart';
import 'package:angular_app/src/mock_hero.dart';
import 'package:angular_forms/angular_forms.dart';
import 'src/hero.dart';

@Component(
    selector: 'my-app',
    templateUrl: "app_component.html",
    styleUrls: ['app_component.css'],
    directives: [formDirectives, coreDirectives])
class AppComponent {
  String name = 'Angular';
  List<Hero> heroes = mockHeroes;

  Hero selected_hero;
  void onSelect(Hero hero) => selected_hero = hero;
}
