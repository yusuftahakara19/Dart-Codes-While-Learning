main(List<String> args) {
  // Abstract olduğu için olmaz = var sekil=Sekil();

  var k1=Kare();
  k1.en=4;
  k1.boy=4;
  print("Alan:"+k1.alanHesapla().toString());
  
  var d1= Diktortgen();
  d1.en=8;
  d1.boy=12;
  print("Cevre : "+d1.cevreHesapla().toString());
  d1.mesaj();
}

//Şekil sınıfından bir nesne üretmeyeceksek bunu abstrack yapabiliriz.

abstract class Sekil{

int en;
int boy;
//Abstract method sadece tanımı olan ama gövdesi olmayan methodlardır.
void alanHesapla();
//  print("Alan : ${en*boy}"); Abstract  için methodların da gövdesi olmamalı.
// alt sınıflarda bunu oluşturman lazım.

void cevreHesapla();
  // print("Çevre : ${2*(en+boy)}");olduğu

  //NORMAL METHODLAR DA OLABİLİR.
  void mesaj(){
    print("mesaj");
  }



}


class Diktortgen extends Sekil  {
  @override
  int alanHesapla() {
    return en*boy;
  }
  

  @override
  int cevreHesapla(){
    return 2*(en+boy);
  }

  @override
  void mesaj() {
    print("Dikdörtgen");
    super.mesaj();
  }
}

class Kare extends Sekil{
  @override
  int alanHesapla() {
    return en*boy;
  }

  @override
  int cevreHesapla(){
    return 2*(en+boy);
  }
}