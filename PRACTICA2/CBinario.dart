
import 'dart:io';

void main() 
{
  int Dec;
  int Bi;
  int l = 1;
  Bi = 0;

  print("Numero: ");
  Dec = int.parse(stdin.readLineSync()!);

  while (Dec > 0) 
  {
    Bi = Bi + (Dec % 2) * l;
    Dec = (Dec / 2).floor();
    l = l * 10;
  }

  print("");
  print("Hecho, Resultado en binario= $Bi");
  
}
