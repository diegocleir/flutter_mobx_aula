import 'package:mobx/mobx.dart';
part 'controller.g.dart';

class Controller = ControllerBase with _$Controller;

abstract class ControllerBase with Store {

  ControllerBase(){
    autorun((_) => print(contador));
  }

  @observable
  int contador = 0;

  @action
  incrementar(){
    contador++;
  }


  // var _contador = Observable(0);
  // Action? incrementar;
  //
  // Controller(){
  //   incrementar = Action(_incrementar);
  // }
  //
  // int get contador => _contador.value;
  // set contador(int novoValor) => _contador.value = novoValor;
  //
  // _incrementar(){
  //   contador++;
  // }

}