/*
Sınıflarımızda nesne üretmeden bazı değişkenlere ve methodlara erişmek isteyebiliriz. Burada karşımıza static kavramı çıkar.class

Static kullanarak nesne değil sınıf değişkenleri ve methodları oluşturabiliriz.
Bir sınıfta tanımlanan method ve değişkenlere erişirken mutlaka nesne üretmemiz gerekirdi. Ama biz bunları static olarak tanımlarsak
artık nesne üretmeden sınıflar üzerinden bu değerlere erişebilir ve kullanabiliriz. Artık onnlar nesnelerin değil sınıfın method ve değişkenleridir.

*/

main(List<String> args) {

  var emre = Ogrenci();
  emre.ad="emre";
  // static yapınca ogrSayisi nı hata verir: emre.ogrSayisi++; çünkü nesne üzerinden değil sınıfın üzerinden ulaşılır.
  Ogrenci.ogrSayisi++;
  emre.adSoyle();
  print("${emre.ad} öğrencisi oluşturuldu  ve okul kodu : ${Ogrenci.okulKodu}");

  var hasan = Ogrenci();
  hasan.ad="hasan";
  hasan.adSoyle();
  Ogrenci.ogrSayisi++;
  print("${hasan.ad} öğrencisi oluşturuldu  ve okul kodu : ${Ogrenci.okulKodu}");
  
  Ogrenci.ogrenciSayisiYazdir(); 
}


//STATİKTE nesnesel değil sınıfsal özellikler bulunur.
class Ogrenci{
  String ad;
  //değişmemesi için const (sabit)tanımlayabiliriz
    static const int okulKodu = 1452;

//ogrSayisini static yapmazsan her bir nesne için özel olur. ve nesneler arası artış azaltış yapamazsın.
  static int ogrSayisi = 0;


  static void ogrenciSayisiYazdir(){
    print("Toplam öğrenci sayısı : $ogrSayisi"); 
    //adiniSoyle(); static olmayan method ve değişkenler statik alan içerisinden erişilemez
    //print("Adı yazdır $ad");
  }


//Bunun başına static yazamazsın çünkü bu nesnelere ait.

//Statik olmayan methodun içine statik methodu yazabilirsin.
  void adSoyle(){
    print("ad : $ad");
    ogrenciSayisiYazdir();
  }
}