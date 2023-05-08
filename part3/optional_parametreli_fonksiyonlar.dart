import 'fonksiyon_kavrami.dart';

main(List<String> args) {
  sehirleriYazdir("Ankara", "Berlin", "Istanbul");
  print("");
  ulkeleriYazdir("Türkiye");
  print("");
  kitalariYazdir("Asya", kita3: "Amerika", kita2: "Asya");
  print("");
  print("Hacim : " + hacmiBul(5, 6, 7).toString());
  print("");
  print("Hacim : " + hacmiBul(5).toString());
    print("");
  print("Hacim2: "+ hacimiBul(en:5,yukseklik: 10,).toString());
}

void sehirleriYazdir(String sehir1, String sehir2, String sehir3) {
  print("Sehir 1 : " + sehir1);
  print("Sehir 2 : " + sehir2);
  print("Sehir 3 : " + sehir3);
}

//seçeneğin opsiyonel olmasını istiyoruz. Bunun için köşeli parantez kullanırız.
void ulkeleriYazdir([String ulke1, String ulke2, String ulke3]) {
  if (ulke1 != null) print("Ulke 1 : " + ulke1);

  if (ulke2 != null) print("Ulke 2 : " + ulke2);

  if (ulke3 != null) print("Ulke 3 : " + ulke3);
}

// {} paranteze alırsan parametreyi o parametreyi yazman gerekmiyor ama yazmak istiyorsan onun neye ait olduğunu belirtmelisin. ve sıra önemli değil
void kitalariYazdir(String kita1, {String kita2, String kita3}) {
  if (kita1 != null) print("Kıta 1 : " + kita1);

  if (kita2 != null) print("Kıta 2 : " + kita2);

  if (kita3 != null) print("Kıta 3 : " + kita3);
}

// burada köşeli parantez içerisinde verdiğimiz değerler eğer bir değer verilmezse null ile çarpılacağından ve hata alınmasını engellemek için.
int hacmiBul(int en, [int boy = 1, int yukseklik = 1]) => en * boy * yukseklik;
int hacimiBul({int en, int boy = 1, int yukseklik = 1}) => en * boy * yukseklik;
