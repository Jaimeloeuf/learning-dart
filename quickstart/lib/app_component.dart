import 'package:angular/angular.dart';
import 'package:angular_app/src/HeroComponent/hero_service.dart';
import 'package:angular_app/src/HeroListComponent/hero_list_component.dart';

@Component(
    selector: "my-app",
    templateUrl: "app_component.html",
    styleUrls: ['app_component.css'],
    directives: [HeroListComponent],
    providers: [ClassProvider(HeroService)])
class AppComponent implements OnInit {
  String name = 'Angular';
  // var smth;
  // AppComponent(this.smth);

  @override
  void ngOnInit() {
    // print(this.smth);
  }
}
