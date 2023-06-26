import 'Personage.dart';

class Generico extends Personage {
  Generico({required String name}) : super(name: name) {
    super.setModel("""░░░░░░░░░░░░░░░░░░░░
░░░░░░░▄▀▀▄▀▀▄░░░░░░
░░░▄▄▄█▒░░▄░▄▒█░░░░░
░░█▓▓▄█░░░▀░▀░█▄▄░░░
▄▓█▀▒▒▀▄▄▄▀▄▀▒▒▒▀▄░
█▓▓█▒▒▒░░░▒▒▒▒▒▀▒▀▀▄
▀██▒▒░░░░▄▒▒▒▒▒▒▒▒█
░░▀▄█▄▒░░▀█▒▒▒▒▒▒▒▄▀
░░░█▄▀▒▒░░▄█▄▄▄▄▀▀░░
▒▒▒▒▀█▄▄░░▀▀▀█▀▒▒▒▒▒
▒▒▒▄▀▓▓▓▀██▀▀█▄▀▀▄▒▒
▒▒█▓▓▄▀▀▀▄█▄▓▓▀█░█▒▒
▒▒▀▄█░░░░░█▀▀▄▄▀█▒▒▒
▒▒▒▄▀▀▄▄▄██▄▄█▀▓▓█▒▒
▒▒█▀▓█████████▓▓▓█▒▒
▒▒█▓▓██▀▀▀▒▒▒▀▄▄█▀▒▒
▒▒▒▀▀▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒""");
  }

  @override
  String setGrow() {
    setLife(1);
    return 'A ${getName()} não cescer mas ganhou uma vida\nAgora tem ${getLife()} vidas';
  }
}
