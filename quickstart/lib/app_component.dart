import 'package:angular/angular.dart';
import 'hero.dart';

@Component(
  selector: 'my-app',
  templateUrl: "app_component.html",
)
class AppComponent {
  var name = 'Angular';
  final title = "Game";

  Hero hero = Hero(1, 'Windstorm');
}
