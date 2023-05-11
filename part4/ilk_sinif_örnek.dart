main(List<String> args) {

  Ogrenci yusuf = Ogrenci();
  var hasan = Ogrenci();

 yusuf.ogrNo=10;
 yusuf.adi="Yusuf Taha Kara";
 yusuf.erkekMi=true;
 yusuf.bilgileriYazdir();
  
 hasan.ogrNo=12;
 hasan.adi="Hasan";
 hasan.erkekMi=true;
 hasan.bilgileriYazdir(); 
}

class Ogrenci {

 int ogrNo;
 String adi;
 bool erkekMi;
 //bunlara instance  veya field variable denir. 

 void dersCalis(){

 }

 void uyu(){

 }

 void bilgileriYazdir(){
   print("Öğrenci numarasi : ${this.ogrNo} adi: ${this.adi} erkek mi : ${this.erkekMi} ");
   //this. denildiğinde o an üzerinde çalışılan nesneye ait olan anlamında.
 }

}