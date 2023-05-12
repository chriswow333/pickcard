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


