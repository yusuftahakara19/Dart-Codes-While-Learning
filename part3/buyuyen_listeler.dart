//Ekledikçe büyüyen çıkardıkça küçülen yapılar olabilir.
main(List<String> args) {
  List<int> numaralarim = List();
  //dinamik olduğu için direkt numaralarim[0]=5; diye atama yapamazsın.
  numaralarim.add(5);
  numaralarim.add(15);
  numaralarim.add(15);
  numaralarim.add(32);
  numaralarim.add(55);
  numaralarim.add(39);
  numaralarim.add(null);

//add diyerek elaman atadığın değeri sonrasında [] kullanarak değerini değiştirebilirsin.

  // numaralarim[1]=23;
//add diyerek eleman atanmamış listeye[]kullanarak eleman çağırılamaz.
  print("numara : ${numaralarim[numaralarim.length - 1]}");
  print("Listedeki eleman sayısı ${numaralarim.length}");

  //.clear tüm elemanları temizler.
  //numaralarim.clear();
  //print("Cleardan sonra Listedeki eleman sayısı ${numaralarim.length}");
  numaralarim.remove(15); //listede gördüğü ilk 15 değerini silecek.

  for (int s in numaralarim) {
    print("sayi : $s");
  }
  print("*****************************");
  numaralarim.removeAt(5);
  //verdiğin indexteki elemanı siler.
  for (int s in numaralarim) {
    print("sayi : $s");
  }

  //List()bunu demek yerine =den sonra direkt bazı değerleri []ile yazabilirsin.
  List<String> sehirler = ["ankara", "izmir", "bursa"];
  sehirler.add("konya");
  sehirler.add("malatya");
  sehirler.add("erzurum");

  for(String sehir in sehirler){
    print("sehir : $sehir");
  }
}
