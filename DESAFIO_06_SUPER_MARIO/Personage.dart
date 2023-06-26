import 'dart:io';

abstract class Personage {
  final String name;
  bool _bigSize = false;
  String _model = '';
  int _life = 3;

  Personage({required this.name});

  String aboutMe() {
    return '$_model\n Olá, meu nome é $name';
  }

  String jumping() {
    return '$name pulou!';
  }

  String running() {
    return '$name está correndo!';
  }

  //Esbarrar no inimigo
  String bump() {
    if (_bigSize == true) {
      _bigSize = false;
      return '$name agora está menor';
    } else {
      if (dead()) {
        return "Suas vidas chegaram ão fim!\n\n  >>>  Game Over  <<<";
      } else {
        return '$name morreu! Agora você tem apenas $_life vidas';
      }
    }
  }

  String fell() {
    if (dead()) {
      return "Suas vidas chegaram ão fim!\n\n  >>>  Game Over  <<<";
    } else {
      return '$name morreu! Agora você tem apenas $_life vidas';
    }
  }

  bool dead() {
    if (_life > 1) {
      _life--;
      return false;
    } else {
      _life--;
      return true;
    }
  }

  String getName() {
    return name;
  }

  void setLife(int life) {
    if (life > 0) {
      _life += life;
    } else {
      print('Game Over!!!');
    }
  }

  void setModel(String modelo) {
    this._model = modelo;
  }

  String getModel() {
    return _model;
  }

  int getLife() {
    return _life;
  }

  String setGrow() {
    if (_bigSize == true) {
      setLife(1);
      return '$name já estava grande, você ganhou uma nova vida.\n$name tem ${getLife()} vidas.';
    } else {
      _bigSize = true;
      return "$name cresceu!!!";
    }
  }

  bool getSize() {
    return _bigSize;
  }
}
