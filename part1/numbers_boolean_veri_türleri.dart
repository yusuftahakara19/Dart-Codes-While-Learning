import 'dart:ffi';

main(List<String> args) {
  int yas = 30;
  print(yas);

  yas=30.6.toInt();
  print(yas);

  double kilo=75.8;
  print(kilo);

  kilo =75;
  print(kilo);

  num sicaklik = 82;
  sicaklik=84.6;
  print(sicaklik);
  
  int sayi1;
  print(sayi1);

  int hexadecimalSayi = 0xAABBCC;
  print(hexadecimalSayi);

  double exponentsSayi= 1.42e5;
  print(exponentsSayi);

  var  sayi2= 52;
  print(sayi2);
  sayi2=60;
  //sayi2=60.2; diyemezsin çünkü var başta int olmuş oldu.

  var OndalikSayi=50.60;
  OndalikSayi=50;
  print(OndalikSayi);

  bool ergenMi=false;
  print(ergenMi);

  var yetiskinMi=true;
  print(yetiskinMi);
  }