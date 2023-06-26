import 'Personage.dart';

class Mario extends Personage {
  Mario() : super(name: 'Mario') {
    super.setModel("""
▒▒▒▒▒▒▒▒▒▄▄▄▄▒▒▒▒▒▒▒
▒▒▒▒▒▒▄▀▀▓▓▓▀█▒▒▒▒▒▒
▒▒▒▒▄▀▓▓▄██████▄▒▒▒▒
▒▒▒▄█▄█▀░░▄░▄░█▀▒▒▒▒
▒▒▄▀░██▄░░▀░▀░▀▄▒▒▒▒
▒▒▀▄░░▀░▄█▄▄░░▄█▄▒▒▒
▒▒▒▒▀█▄▄░░▀▀▀█▀▒▒▒▒▒
▒▒▒▄▀▓▓▓▀██▀▀█▄▀▀▄▒▒
▒▒█▓▓▄▀▀▀▄█▄▓▓▀█░█▒▒
▒▒▀▄█░░░░░█▀▀▄▄▀█▒▒▒
▒▒▒▄▀▀▄▄▄██▄▄█▀▓▓█▒▒
▒▒█▀▓█████████▓▓▓█▒▒
▒▒█▓▓██▀▀▀▒▒▒▀▄▄█▀▒▒
▒▒▒▀▀▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒
""");
  }

  @override
  String aboutMe() {
    return "${getModel()} \n It's-a me, Mario!";
  }

  @override
  String jumping() {
    return '$name pulou em cima da tartaruga, isso não é legal :-(';
  }

  @override
  String running() {
    return '$name está correndo muito rapido!';
  }
}
