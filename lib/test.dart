import 'package:flutter/material.dart';

class A {
  void a(){
    print("a");
  }
}


mixin X on A{
  void x(){
    print("x");
  }
}

class implA implements A{
  @override
  void a() {
    // TODO: implement a
  }

}

class mixinsX2 extends implA with X{

}




// abstract class Product {
//   String? name;
// }


// class ConcreteProduct implements Product {
//   @override
//   String? name = 'ConcreteProduct';
// }

// class SimpleFactory {
//   static Product createProduct(int type) {
//     return ConcreteProduct();
//   }
// }

// void main(){
//   SimpleFactory.createProduct(1);
// }

// class Product {

//   factory Product.createFactory(int type) {
//     return Product._concrete();   
//   }

//   Product._concrete() :name = 'concrete';
//   Product._concrete1() :name = 'concrete1';

//   String name;
 

//   static final Product product1 = Product._concrete();
//   static final Product product2 = Product._concrete1();


// }



abstract class DialogFactory {
  Widget createDialog(BuildContext context);

  Future<void> show(BuildContext context) async {
    final dialog = createDialog(context);
    return showDialog<void>( 
      context:context,
      builder:(_){
        return dialog;
      }
    );
  }
}




class AndroidAlertDialog extends DialogFactory{
  @override
  Widget createDialog(BuildContext context) {
    return AlertDialog(
      title:Text('Hello'),
      content: const Text('This is the material'),
      actions:[
        TextButton(
          onPressed: (){},
          child:Text(''),
        )
      ]
    );
  }
}


const double xOrigin = 0;
const double yOrigin = 0;
class Point {
  final double x;
  final double y;
  Point(this.x, this.y);

  Point.nameConstructor()
    : x = xOrigin, 
      y = yOrigin;

}

void main() {
  Point(1, 2);
}


class Vector2d {

  final double x;
  final double y;
  Vector2d.name({required this.x, required this.y});
}

// class Vector3d extends Vector2d {


//   final double z;


//   // Vector3d.yzPlan({required super.x, required super.y, required this.z,}) : super.name(super.x:0s);


//   Vector3d.fromJson(Map<String, double> json, this.z ): x = json['x']!, y = json, super.${1:name}(${2:0.0}, ${3:0.0}):['y']! {
//   }
// }



class Point3 {
  double x, y;

  Point3(this.x, this.y);

  Point3.alongXAxis(double x):this(x, 0);

}

class Logger {
  
  final String name;
  bool mute = false;

  static final Map<String, Logger> _cache = <String, Logger>{};

  factory Logger(String name) {
    return _cache.putIfAbsent(name, () => Logger._internal(name));
  }



  Logger._internal(this.name);
}



class Vector {
  
  final int x, y;

  Vector(this.x, this.y);

  Vector operator +(Vector v) => Vector(x+v.x, y+v.y);
  Vector operator -(Vector v) => Vector(x-v.x, y-v.x);

  @override
  bool operator ==(Object other) => other is Vector && x == other.x && y == other.y;


}


class Rectangle {
  double left, top, width, height;

  Rectangle(this.left, this.top, this.width, this.height);

  double get right => left+width;

  set right(double value) => left = value - width;
  double get bottom => top + height;
  set bottom(double value) => top = value - height;

}


