import 'dart:html';
import 'package:angular/angular.dart';
import 'package:angular_forms/angular_forms.dart';

@Component(
    selector: 'ttt-tow',
    template: '<p>t22</p>',
    directives: [
      formDirectives,
      CORE_DIRECTIVES,
    ]
)
class tttTow {

  tttTow(){
    print(123);
  }
}