import 'dart:html';

import 'package:angular/angular.dart';
import 'package:angular_forms/angular_forms.dart';


@Component(
    selector: 'child-directive',
    template: '<p>child</p>'
)
class ChildDirective {
  doSomething() {}
}

@Component(
  selector: 'tab',
  template: '''
    <p>{{title}}</p>
  ''',
)
class TabComponent {
  @Input() String title;
}

@Component(
  selector: 'tabs',
  template: '''
    <ng-content></ng-content>
  ''',
)
class TabsComponent implements AfterContentInit {
//  @ContentChildren(TabComponent) QueryList<TabComponent> tabs;
  @ContentChildren(TabComponent) List<TabComponent> tabs;

  ngAfterContentInit() {
    tabs.forEach((TabComponent tab) {
      window.alert(tab.title);
    });
  }
}


@Component(
    selector: 'binding-syntax',
//    host: const {
//      'role': 'tabpanel',
//    },
    template: '''
     <b #bs>Binding Syntax</b>    
     <p on-click="pOnClick()">click</p>
     <tabs>
       <tab bind-title="one"></tab>
       <tab bind-title="two"></tab>
     </tabs>
     <child-cmp></child-cmp>
     <child-cmp></child-cmp>
    ''',
    directives: const [CORE_DIRECTIVES, formDirectives,ChildDirective, TabsComponent,TabComponent]
)
class BindingSyntaxComponent implements AfterViewInit {
  var name = 'Angular';
  var one = 'one';
  var two = 'two';
  void pOnClick() {
    print("pOnClick");
  }

//  @ContentChildren(TabComponent) QueryList<TabComponent> tabs;
  @ContentChildren(TabComponent) List<TabComponent> tabs;

  @ViewChild("bs")
  ElementRef element;

  @ContentChild(ChildDirective)
//  QueryList<ChildDirective> contentChild;
  List<ChildDirective> contentChild;

  @override
  ngAfterViewInit() {
    // TODO: implement ngAfterViewInit
    window.console.dir((element.nativeElement as Element).innerHtml);
    window.console.dir(111111111);
  }
}