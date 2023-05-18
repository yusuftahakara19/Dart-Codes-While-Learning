import 'dart:io';
//dart:io = okuma yazma kütphanesi
import 'dart:async';
//Örnek olarak:İnstagrama fotoğraf yükleneceği sırada arka planda gezinebilmek ve fotoğraf yüklemesi bittiğinde bir uyarı almak içim =>async


main(List<String> args) {
  print("Program başladı");
  dosyaIceriginiGoster();
  //print("Program bitti!!");
  programBitir();
 
}

/*
dosyaIceriginiGoster() async{//await yazdığımız için async yazılması gerekiyor.
  print("Dosya içeriği gösterilecek...");
  var dosyaIcerigi = await dosyaIndir();//buranın başına await yapmazan işlem return oluncaya kadar program bitiyor.
  print("DOSYA İÇERİĞİ : $dosyaIcerigi");
}
*/

dosyaIceriginiGoster(){
  print("Dosya içeriği gösterilecek...");
  var dosyaIcerigi=dosyaIndir();
  dosyaIcerigi.then((sonuc)=> print("$sonuc"));
 
}

//Future<String> tipinde değişken döndürüyor.
Future<String> dosyaIndir() {
  print("Dosya indirme işlemi başladı...");
// çalıştığı zaman 5 saniye beklemesini istiyoruz.
// sleep(Duration(seconds: 5));

//10saniye bekle sonra içerdeki komutu yap.
//bu işlem uzun sürecek ben bbu işlemi ana treati yormadan yapayım  sonra sana getireceğim :
Future<String> sonuc =Future.delayed(Duration(seconds:5),(){

  return "İndrilen dosya içeriği";

});

  print("Dosya indirme işlemi bitti...");
  return sonuc;
}

Future <String> programBittiYazisi = Future.delayed(Duration(seconds :7),(){
  return "programBittiYazdır";
});

programBitir(){
  var programBitti= programBittiYazisi;
  programBitti.then((programBittiYazisi)=>print("Program Bitti"));
}