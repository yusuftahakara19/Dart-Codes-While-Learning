main(List<String> args) {
  
  int sayi1 =5;
  int sayi2= 4;
  int kucukSayi;

/*
  if(sayi1<sayi2){
    kucukSayi=sayi1;
  }else{
    kucukSayi=sayi2;
  }
*/

//sayi1 < sayi2 ? kucukSayi=sayi1 : kucukSayi=sayi2;
  kucukSayi= sayi1<sayi2 ? sayi1: sayi2;
  print("$kucukSayi");

  String isim;
  String soyIsim = "Kara";
  String mesaj;

  mesaj= isim ?? soyIsim;
  //isme bak değer varsa al yoksa soyisme bak.
  print("Merhaba $mesaj");

}

