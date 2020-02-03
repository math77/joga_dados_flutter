// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dados_contador.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$DadosContador on _DadosContador, Store {
  Computed<int> _$totalComputed;

  @override
  int get total => (_$totalComputed ??= Computed<int>(() => super.total)).value;

  final _$esquerdaAtom = Atom(name: '_DadosContador.esquerda');

  @override
  int get esquerda {
    _$esquerdaAtom.context.enforceReadPolicy(_$esquerdaAtom);
    _$esquerdaAtom.reportObserved();
    return super.esquerda;
  }

  @override
  set esquerda(int value) {
    _$esquerdaAtom.context.conditionallyRunInAction(() {
      super.esquerda = value;
      _$esquerdaAtom.reportChanged();
    }, _$esquerdaAtom, name: '${_$esquerdaAtom.name}_set');
  }

  final _$direitaAtom = Atom(name: '_DadosContador.direita');

  @override
  int get direita {
    _$direitaAtom.context.enforceReadPolicy(_$direitaAtom);
    _$direitaAtom.reportObserved();
    return super.direita;
  }

  @override
  set direita(int value) {
    _$direitaAtom.context.conditionallyRunInAction(() {
      super.direita = value;
      _$direitaAtom.reportChanged();
    }, _$direitaAtom, name: '${_$direitaAtom.name}_set');
  }

  final _$_DadosContadorActionController =
      ActionController(name: '_DadosContador');

  @override
  void rolar() {
    final _$actionInfo = _$_DadosContadorActionController.startAction();
    try {
      return super.rolar();
    } finally {
      _$_DadosContadorActionController.endAction(_$actionInfo);
    }
  }
}
