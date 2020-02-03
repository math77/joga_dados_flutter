import 'dart:math';
import 'package:mobx/mobx.dart';

part 'dados_contador.g.dart';


class DadosContador = _DadosContador with _$DadosContador;

abstract class _DadosContador with Store {

  @observable
  int esquerda = Random().nextInt(6) + 1;

  @observable
  int direita = Random().nextInt(6) + 1;

  //utilizando isso para sempre que um dos observáveis for alterado seja calculado novamente o valor.
  @computed
  int get total => esquerda + direita;

  @action
  void rolar(){
    esquerda = Random().nextInt(6) + 1;
    direita = Random().nextInt(6) + 1;
  }
}
