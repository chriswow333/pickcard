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