main(List<String> args) {
  var emre = Ogrenci(52, "emre", true);
  /*
  print(emre.adi); //get metodu çalıştı
  emre.adi = "yeni emre"; //set metodu çalıştı
  */
  emre.ogrenciNoAta = -20;
  emre.bilgileriYazdir();
  print(emre.ogrenciNoOku); 
  // Değerleri method ile almak ve kurmak için. değer Almak=get  değer atamak=set

  //Diyelim ki bir öğrenci listesi yapılıyor ve burada öğrenci numarasında negatif sayı olmasını istemezsin. Getter ile setter ın kullanımı bunun içindir.
}

class Ogrenci {
  int ogrNo;
  String adi;
  bool erkekMi;
  //bunlara instance  veya field variable denir.

  Ogrenci(this.ogrNo, this.adi, this.erkekMi) {
    print("Ogrenci  sınıfından bir nesne üretiliyor ki ben tetiklendim");
  }

  void set ogrenciNoAta(int no) {
    if (no <= 0) {
      this.ogrNo = 1;
    } else {
      this.ogrNo = no;
    }
  }
   
  String get ogrenciNoOku{
    return "Ogrenci numarası : $ogrNo";
  }

   //String get ogrenciNoOku =>"Ogrenci numarası : $ogrNo";
     
  


  void dersCalis() {}

  void uyu() {}

  void bilgileriYazdir() {
    print(
        "Öğrenci numarasi : ${this.ogrNo} adi: ${this.adi} erkek mi : ${this.erkekMi} ");
  }
}
