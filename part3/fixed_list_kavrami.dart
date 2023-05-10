main(List<String> args) {
  List<int>numaralarim=List.filled(10, 9);
  //List<int> burada veri türünü vermiş oluyor.
  // .filled(List in uzunluğu,koyulacak değer). bu koyulacak değer null olmasın diye verilen değer. Eğer istersen başka bir değeri yazabilirsin.
  numaralarim[0]=3;
  numaralarim[1]=6;
  numaralarim[2]=7;
  
  print("index 9 : "+numaralarim[9].toString());

  var isimlerim=List(3);
  isimlerim[0]="Yusuf";
  isimlerim[1]="Mehmet";
  isimlerim[2]="Mustafa";

  print("isim : "+isimlerim[1]);

  //Listeleri Gezmek
  for(String okunanIsim in isimlerim){
    print("Okunan isim : $okunanIsim");
  }
  //gezildiğinde alınacak değer String. Her aldığımız ifadeyi okunanİsim'in içine atıyoruz.
  print(" ");

  for(int okunanNum in numaralarim){
    print("Okunan numara : $okunanNum");
  }
  print(" ");

  //KLASİK FOR: Listenin index numaralarını kullanarak yaptığımız okuma işlemi
  for(int i=0; i<numaralarim.length; i++){
    print("$i indexindeki sayı ${numaralarim[i]}");
  }
  
  print("LAMBDA");
  numaralarim.forEach((sayi)=>print(sayi));
  //lambda başka bir fonksiyonu parametre olarak alır.
}