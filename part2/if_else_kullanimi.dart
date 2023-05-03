main(List<String> args) {
  int sayi1 = 12;
  num sayi2 = 12;
  //var sayi3 = 16;

  if(sayi1 > sayi2){
    print("$sayi1 sayısı $sayi2 sayısından büyüktür ");
 } else{
     print("$sayi1 sayısı $sayi2 sayısından küçüktür ");
  print("********************************");
 }
  if(sayi1<sayi2){
   print("$sayi1 sayısı $sayi2 sayısından küçüktür ");
  }else if(sayi2<sayi1){
   print("$sayi2 sayısı $sayi1 sayısından küçüktür ");
  }else{
    print("Verdiğiniz sayılar eşittir.");
  }
  print("*********************************");

  int notDegeri = 120;

  if(notDegeri<=100 && notDegeri>=85){
    print("AA");
  } else if (notDegeri>=75 && notDegeri<85){
    print("BA");
  }else if (notDegeri>=65 && notDegeri<75){
    print("BB");
  }else if (notDegeri>=50 && notDegeri<65){
    print("CA");
  }else if(notDegeri>=0 && notDegeri<50){
    print("Notunuz 50'den aşağıda");
  }else{
    print("Yanlış değer girdiniz");
  }


  
  
}