import 'package:angular/angular.dart';
import 'package:angular_app/src/hero.dart';
import 'package:angular_forms/angular_forms.dart';

@Component(
    selector: 'my-hero',
    templateUrl: "hero_component.html",
    styleUrls: ['hero_component.css'],
    directives: [coreDirectives, formDirectives])
class HeroComponent {
  // Tell angular that hero is an Input property of a property binding expression
  @Input()
  Hero hero;
}
