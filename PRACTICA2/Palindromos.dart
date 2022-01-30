import 'dart:io';

void main() 
{
  String Pal;
  String Es;
  String l;
  int Cont;

  print("Palabra: ");
  Pal = stdin.readLineSync()!;
  Cont = Pal.split(' ').length;
  Es = Pal.trim().replaceAll(" ", "");
  l = Es.toLowerCase();

  String reversa = l.split('').reversed.join('');

  if (l == reversa) 
  {
    print('Efectivamente. Es un palindromo');
  } 
  else 
  {
    print('Claro que mo es un Palíndromo');
  }

  print('Cantidad de palabras sacadas: $Cont');
}

