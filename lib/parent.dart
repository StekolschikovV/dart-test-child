import 'dart:html';
import 'package:angular/angular.dart';
import 'package:angular_forms/angular_forms.dart';
import './child.dart';
@Component(
    selector: 'parent-component',
    templateUrl: 'parent.html',
    directives: [
      formDirectives,
      CORE_DIRECTIVES,
    ]
)
class ParentComponent implements AfterViewInit{

//  @ContentChildren(ChildComponent)
//  List<ChildComponent> child;

//  @ViewChild(ChildComponent)
//  ChildComponent child;

  @ViewChildren(ChildComponent)
  List<ChildComponent> children;


  ParentComponent(){
    print('ParentComponent init');
  }

  @override
  void ngAfterViewInit() {
//    print('ParentComponent ngAfterViewInit ${child}');
//    child.forEach((e){
//      print(e);
//    });
  }
}