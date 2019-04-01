import 'dart:html';
import 'package:angular/angular.dart';
import 'package:angular_forms/angular_forms.dart';

@Component(
    selector: 'child-component',
    template: '<h1>child</h1>',
    directives: [
      formDirectives,
      CORE_DIRECTIVES,
    ]
)
class ChildComponent {

  ChildComponent(){
    print('ChildComponent init');
  }
}