import 'package:angular/angular.dart';
//import './t1.dart';
//import './t2.dart';
import './parent.dart';
import './child.dart';

@Component(
  selector: 'app-component',
  templateUrl: 'app_component.html',
  directives: [
//    BindingSyntaxComponent
//    tttTow
    ChildComponent,
    ParentComponent
  ],

)
class AppComponent {
  var name = 'Angular!';
}
