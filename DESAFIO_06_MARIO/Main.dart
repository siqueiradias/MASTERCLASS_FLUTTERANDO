import 'dart:io';

import 'Deise.dart';
import 'Game.dart';
import 'Generico.dart';
import 'Luigi.dart';
import 'Mario.dart';
import 'Peach.dart';
import 'Personage.dart';

void main(List<String> args) {
  var gameOver = false;
  Personage player;
  while (!gameOver) {
    print("\x1B[2J\x1B[0;0H"); //Limpa a tela
    print('BEM VINDO AO GAME');
    print('Selecione seu personagem');
    print('1 -> Mario');
    print('2 -> Luigi');
    print('3 -> P. Peach');
    print('4 -> P. Deise');
    print('5 -> Você');
    print('\nq -> Para desistir de jogar :-(');
    print('\n\nQuem você escolhe? ');
    var op = stdin.readLineSync();
    switch (op) {
      case '1':
        player = Mario();
        Game game = Game(player);
        game.introduce();
        game.startGame();
        break;
      case '2':
        player = Luigi();
        Game game = Game(player);
        game.introduce();
        game.startGame();
        break;
      case '3':
        player = Peach();
        Game game = Game(player);
        game.introduce();
        game.startGame();
        break;
      case '4':
        player = Deise();
        Game game = Game(player);
        game.introduce();
        game.startGame();
        break;
      case '5':
        print('Informe um nome: ');
        player = Generico(name: stdin.readLineSync() ?? 'Yoshi');
        Game game = Game(player);
        game.introduce();
        game.startGame();
        break;
      case 'q':
        gameOver = true;
        break;
      default:
        print('Opção invalida!');
        print('Pressione ENTER para retornar ao menu');
        stdin.readLineSync();
    } 
    if (gameOver){
      print('>>>> Fim de Jogo <<<<');
      exit(0);
    }
  }
}
