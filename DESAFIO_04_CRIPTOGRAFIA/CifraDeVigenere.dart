import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  print("\x1B[2J\x1B[0;0H"); //Limpa a tela
  print('Informe o texto para ser criptografado: ');
  String? texto = stdin.readLineSync();

  Criptografia c = new Criptografia(
      text: texto! != '' ? texto : 'Paysandu é o maior do Norte!');

  print('Texto informado: ${c.getMsg()}');
  print('Texto informado em Char Code: ${c.getMsgCharCode()}');
  print('');
  print('Chave de criptografia: ${c.getKey()}');
  print('Chave de criptografia em Char Code: ${c.getKeyCharCode()}');
  print('');
  print('Mensagem criptografada: ${c.encodeMsg()}');
  print('Mensagem criptografada em Char Code: ${c.getMsgCharCode()}');
  print('');
  print('Mensagem descriptografada: ${c.decodeMsg()}');
}

class Criptografia {
  late final _key;
  late final _msg;

  ///Construtor
  Criptografia({required String text}) {
    this._msg = text.toUpperCase().codeUnits.toList();
    this._key = _setKeyRandom();
  }

  ///Altera o conteúdo da mensagem
  void setMsg({required String text}) {
    this._msg = text.toUpperCase().codeUnits.toList();
    this._key = _setKeyRandom();
  }

  ///Gera a chave de criptografia
  List<int> _setKeyRandom() {
    var random = new Random();
    var key = <int>[];
    for (var i = 0; i < _msg.length; i++) {
      if ((_msg[i] >= 65) && (_msg[i] <= 90)) {
        key.add(random.nextInt(256));
      } else {
        key.add(0);
      }
    }
    return key;
  }

  ///Retorna a Key
  String getKey() {
    return String.fromCharCodes(_key);
  }

  ///Retorna a Key em formato CharCode dentro de uma Lista
  List getKeyCharCode() {
    return this._key;
  }

  ///Retorna o estado da mensagem em Alfabeto de uma String.
  String getMsg() {
    return String.fromCharCodes(_msg);
  }

  ///Retorna o estado da mensagem em formato CharCode dentro de uma Lista
  List getMsgCharCode() {
    return this._msg;
  }

  ///Codifica a Mensagem.
  String encodeMsg() {
    for (var i = 0; i < _msg.length; i++) {
      if (_key[i] > 0) {
        _msg[i] = (((_msg[i] + _key[i]) % 26) + 65);
      }
    }
    return String.fromCharCodes(_msg);
  }

  ///Decodifica a Mensagem.
  String decodeMsg() {
    for (var i = 0; i < _msg.length; i++) {
      if (_key[i] > 0) {
        this._msg[i] = ((((_msg[i] - _key[i]) + 26) % 26) + 65);
      }
    }
    return String.fromCharCodes(_msg);
  }
}
