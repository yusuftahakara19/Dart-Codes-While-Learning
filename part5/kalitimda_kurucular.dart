

import 'kalitima_giris.dart';

main(List<String> args) {
  Kopek k1 = new Kopek("labrador","siyah");
  k1.renk="Kırmızı";
  Kopek k2=Kopek.isimliKurucu("boo", "kızıl");
  Kopek k3 = Kopek.isimliKurucu2("kahverengi");
}

class Hayvan{

 String renk;
 Hayvan(String renkkk){
   this.renk=renkkk;
   print("Hayvan sınıfından nesne oluşturuldu. Rengi : $renk");
 }

 Hayvan.isimliKurucu(){

 }

} 

class Kopek extends Hayvan {
  String cins;
  Kopek (String cinsss, String renk): super(renk){
    this.cins=cinsss;
    print("Kopek sınıfından nesne oluşturuldu. cinsi $cins rengi : $renk");
  }


Kopek.isimliKurucu(String cinsss, String renk):super(renk){
   this.cins=cinsss;
    print("Kopek sınıfından nesne oluşturuldu. cinsi $cins rengi : $renk");
  }

Kopek.isimliKurucu2(String renk): super.isimliKurucu(){
  print("Sadecce renk alan ve üst sınıfı parametre almayan kurucu tetiklendi"); 

}

}