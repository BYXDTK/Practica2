import 'dart:io';

void main() {
  int Paga;
  int HExtras;
  int PExtra;
  int AAdmin;
  int HTrabajadas;

  AAdmin = 0;

  String CER;
  CER = "Cerrar";

  while (AAdmin < 2 && CER.toUpperCase() == "Cerrar") 
  {
    print("¿Cuantas horas se trabajo durante la semana?");
    HTrabajadas = int.parse(stdin.readLineSync()!);

    while (HTrabajadas <= 0) 
    {
      print(
          "No puede ser menos de 0. ¿Porque no reintenta?");
      print("");
      print("¿Cuantas horas se trabajo durante la semana?");
      HTrabajadas = int.parse(stdin.readLineSync()!);
    }

    if (HTrabajadas < 27) 
    {
      AAdmin = AAdmin + 1;
      Paga = HTrabajadas * 120;
      
      print(
          "Horas minimas: 27 - "
          "En caso de que no se tengan se dara una Acta Administrativa "
          "Si se acumulan 2, se hara un despido");
      print("");
      print(
          "Horas trabajadas: $Paga");
    } 
    else if (HTrabajadas <= 40) 
    {
      Paga = HTrabajadas * 120;
      print(
          "Horas trabajadas $HTrabajadas = $Paga pesos");
      print("");
    } 
    else 
    {
      HExtras = HTrabajadas - 40;
      PExtra = HExtras * 175;
      Paga = HTrabajadas * 120;
      print("Horas trabajadas $HTrabajadas + Horas Extras $HExtras = ${Paga + PExtra} pesos");
      print("");
    }
    if (AAdmin < 2) 
    {
      print("¿Desea usar el programa de nuevo?");
      print("(SI = Y | NO = N)");
      CER = stdin.readLineSync()!;
    } 
    else 
    {
      print("Actas administrativas: $AAdmin ");
      print("Recordatorio: Tener más de 2 actas administrativas sera despido");
    }
  }
}