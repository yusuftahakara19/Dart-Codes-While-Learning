//main metodunda da geriye  döndürecek herhangi bir şey olmadığı için(return yok) void olarak çağırılabilir.
void main(List<String> args) {
//Fonksiyonlar direkt adıyla çağırılır.
  cevreHesapla();
  //öyle bir yapı olsun ki en ve boy girilince bize çevreyi  versin.

  int hesaplananAlanDegeri = alanHesapla();
  print("Alan değeri : $hesaplananAlanDegeri");
  print("Alan değeri : " + alanHesapla().toString());

  int hesaplananHacim = hacimHesapla(4, 5, 6);
  print("Hacim Değeri : $hesaplananHacim");
}
//diğer fonksiyonun bittiği yerden yeni bir fonksiyon tanımlayacağız.

//void anahtar  kelimesi geriye herhangi bir şey döndürmeyen methodlar için kullanılır.
void cevreHesapla() {
  int en, boy, cevre = 0;
  en = 8;
  boy = 12;
  cevre = (en + boy) * 2;
  print("Çevre : $cevre");
}

//Fonksiyonun döndüreceği değeri fonksiyonun başında yazmak performansı arttırır.
int alanHesapla() {
  int en, boy, alan = 0;
  en = 8;
  boy = 12;
  alan = en * boy;

  return alan;
  //hesapladığı alanı sayı olarak main e gönderiyor  return ile.
}

int hacimHesapla(int en, int boy, int yukseklik) {
  return en * boy * yukseklik;
}
/*
 geriDonusTipi methodAdi(){
   method içeriği
   }
*/
