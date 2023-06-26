import 'dart:io';
import 'dart:math';

import 'Personage.dart';

class Game {
  Personage player;
  var locationRoad = 0;
  var endRoad = 5;
  Game(Personage this.player);

  void introduce() {
    print("\x1B[2J\x1B[0;0H"); //Limpa a tela
    print(player.aboutMe());
    print('Pressione ENTER para continuar...');
    stdin.readLineSync();
    startGame();
  }

  void startGame() {
    var loop = true;
    while (loop) {
      if (player.getLife() > 0) {
        screenMain();
      } else {
        gameOver();
        loop = false;
        break;
      }
      if (locationRoad >= endRoad) {
        wonGame();
        loop = false;
        break;
      }
    }
  }

  void screenMain() {
    print("\x1B[2J\x1B[0;0H"); //Limpa a tela
    print("Jogador: ${player.getName()} >>> Vidas: ${player.getLife()}");
    print('');
    print("${player.getName()} está na posição $locationRoad.");
    print("Você precisa chegar no final na posição $endRoad");
    print('\n\n');
    print("1 -> para correr");
    print("2 -> para pular");
    print('\n\n');
    print("Qual seu proximo movimento:");
    var op = stdin.readLineSync();
    switch (op) {
      case '1':
        actionRun();
        print("Pressione ENTER para CONTINUAR");
        stdin.readLineSync();
        break;
      case '2':
        actionJumper();
        print("Pressione ENTER para CONTINUAR");
        stdin.readLineSync();
        break;
      default:
        print('Opção invalida!');
        print("Pressione ENTER para tentar novamente");
        stdin.readLineSync();
    }
  }

  void actionRun() {
    print(player.running());
    var intValue = Random().nextInt(3);
    switch (intValue) {
      case 0:
        print(
            "${player.getName()} parou de correr, está mais proxímo do final");
        locationRoad++;
        break;
      case 1:
        print("${player.getName()} esbarrou no inimigo");
        print(player.bump());
        break;
      case 2:
        print('${player.getName()} caiu no burraco');
        print(player.fell());
        break;
      default:
    }
  }

  void actionJumper() {
    print(player.jumping());
    var intValue = Random().nextInt(4);
    switch (intValue) {
      case 0:
        print(
            "${player.getName()} atravessou o burraco, está mais proxímo do final!");
        locationRoad++;
        break;
      case 1:
        print("${player.getName()} esbarrou no inimigo");
        print(player.bump());
        break;
      case 2:
        print('${player.getName()} caiu no burraco');
        print(player.fell());
        break;
      case 3:
        print('${player.getName()} pegou um cogumelo.');
        print(player.setGrow());
        break;
      default:
    }
  }

  void wonGame() {
    print("\x1B[2J\x1B[0;0H"); //Limpa a tela
    print("+++++++++++++++++++  Bom trabalho  +++++++++++++++++++");
    print(player.getModel());
    print('Parabens!!!');
    print("${player.getName()} venceu o jogo!!!!! :)");
    print('\n\nPressione ENTER para retornar ao menu principal');
    stdin.readLineSync();
  }

  void gameOver() {
    print("\x1B[2J\x1B[0;0H"); //Limpa a tela
    print("----------  VOCÊ PERDEU  ----------");
    print("""               ...
             ;::::;
           ;::::; :;
         ;:::::'   :;
        ;:::::;     ;.
       ,:::::'       ;           OOO\
       ::::::;       ;          OOOOO\
       ;:::::;       ;         OOOOOOOO
      ,;::::::;     ;'         / OOOOOOO
    ;:::::::::`. ,,,;.        /  / DOOOOOO
  .';:::::::::::::::::;,     /  /     DOOOO
 ,::::::;::::::;;;;::::;,   /  /        DOOO
;`::::::`'::::::;;;::::: ,#/  /          DOOO
:`:::::::`;::::::;;::: ;::#  /            DOOO
::`:::::::`;:::::::: ;::::# /              DOO
`:`:::::::`;:::::: ;::::::#/               DOO
 :::`:::::::`;; ;:::::::::##                OO
 ::::`:::::::`;::::::::;:::#                OO
 `:::::`::::::::::::;'`:;::#                O
  `:::::`::::::::;' /  / `:#
   ::::::`:::::;'  /  /   `#""");
    print("${player.getName()} NÃO conseguiu venceu o jogo!!!!! :-(");
    print('\n\nPressione ENTER para retornar ao menu principal');
    stdin.readLineSync();
  }
}
