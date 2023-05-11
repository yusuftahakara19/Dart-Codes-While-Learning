main(List<String> args) {
  var yusuf = Ogrenci("Yusuf", 15, true);
  yusuf.bilgileriYazdir();
  /*
  Default constructor  ile yazım = var yusuf = Ogrenci(); şeklinde
  yusuf.ogrNo = 10;
  yusuf.adi = "Yusuf Taha Kara";
  yusuf.erkekMi = true;
  yusuf.bilgileriYazdir();
  */
  var hasan = Ogrenci("hasan", 20, true);
  //parametreli constructor.
  hasan.bilgileriYazdir();

  var ayse = Ogrenci.cinsiyetBilgisiOlmayanKurucu("ayse", 40);
  ayse.bilgileriYazdir();
 var ali = Ogrenci.cinsiyetBilgisiOlanKurucu("Ali", 42, true);
  ali.bilgileriYazdir();
  }

 
class Ogrenci {
  int ogrNo;
  String adi;
  bool erkekMi;

//Default constructor(bir nesne üretilmeden hemen önce tetiklenen method) açığa çıkarma
//içinde herhangi bir şey yazmasa da Ogrenci() şeklinde bir method hep oradadır.

/*
Default constructor ile bir constructor aynı anda olamaz.
 Ogrenci(){
  print("Ogrenci  sınıfından bir nesne üretiliyor ki ben tetiklendim");
 }
*/
  Ogrenci(String ad, int no, bool cinsiyet) {
    print("Ogrenci  sınıfından bir nesne üretiliyor ki ben tetiklendim");
    this.ogrNo = no;
    this.adi = ad;
    this.erkekMi = cinsiyet;
  }

  //Ogrenci. deyip kendi methodunu tanımlayabilirsin. Bu method constructor gibi çalışıyor. Yani bir nesne üretirken ilk tetiklenen method burası.

  Ogrenci.cinsiyetBilgisiOlmayanKurucu(String ad, int no) {
    print("Ogrenci  sınıfından bir nesne üretiliyor ki ben tetiklendim");

    this.adi = ad;
    this.ogrNo = no;
  }

  /*
  Ogrenci.cinsiyetBilgisiOlanKurucu(String ad, int no, bool cinsiyet) {
    print("Ogrenci  sınıfından bir nesne üretiliyor ki ben tetiklendim");
    this.ogrNo = no;
    this.adi = ad;
    this.erkekMi = cinsiyet;
  }
   this.  şeklinde belirtmeye gerek kalmaksızın yazmak için: aşağıdaki method kullanılır !!sıra önemli
  */

  
  Ogrenci.cinsiyetBilgisiOlanKurucu(this.adi,this.ogrNo,this.erkekMi ) {
    print("Ogrenci  sınıfından bir nesne üretiliyor ki ben tetiklendim");
  }
  void dersCalis() {}

  void uyu() {}

  void bilgileriYazdir() {
    print(
        "Öğrenci numarasi : ${this.ogrNo} adi: ${this.adi} erkek mi : ${this.erkekMi} ");
  }
}
