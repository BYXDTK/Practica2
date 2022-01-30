import 'dart:io';

void main() {
  print('Utilize decimales');
  stdout.write('Peso:  ');
  double Pes = double.parse(stdin.readLineSync()!);

  stdout.write('Altura: ');
  double Alt = double.parse(stdin.readLineSync()!);

  double IMC = Pes / (Alt * Alt);

  print('IMC = ' + IMC.toStringAsFixed(2));

  if (IMC < 16) {
    print('Estas en desnutricion de primer grado');
  } else if (IMC < 17) {
    print('Estas en desnutricion de segundo grado');
  } else if (IMC < 18.5) {
    print('Estas en peso bajo');
  } else if (IMC < 25) {
    print('Estas en peso normal');
  } else if (IMC < 30) {
    print('Estas en sobrepeso');
  } else if (IMC < 35) {
    print('Estas en obesidad en primer grado');
  } else if (IMC < 40) {
    print('Estas en obesidad en segundo grado');
  } else {
    print('Estas en obesidad en tercer grado');
  }
}