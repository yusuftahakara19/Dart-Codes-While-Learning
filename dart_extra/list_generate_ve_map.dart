
import 'dart:math';

//Random()=> darttaki math kütüphanesinden bir sınıf
main(List<String> args) {
//List<int> ogrenciNumaralari=List.generate(30,(index)=> index );
// List<int> ogrenciNumaralari=List.generate(30,(index)=>rastgeleOgrenciNoOlustur());
 
 
 List<int> ogrenciNumaralari=List.generate(30,(index){
  return rastgeleOgrenciNoOlustur();
 } );
 //ogrenciNumaralari.forEach((oankiNumara)=> print("Ogrenci numarası : $oankiNumara"));



 //Bir listeyi alıp bundaki değerleri kullanıp yeni bir liste oluşturan map yapısı : 
/*List<Ogrenci> tumOgrenciler = ogrenciNumaralari.map((ogrNo){
  return Ogrenci("Ogrenci $ogrNo", ogrNo);
}).toList();
*/
List<Ogrenci> tumOgrenciler = ogrenciNumaralari.map((ogrNo) => Ogrenci("Ogrenci $ogrNo", ogrNo)).toList();

tumOgrenciler.forEach((oankiOgrenci) => print(" ${oankiOgrenci}"));
}
























int rastgeleOgrenciNoOlustur(){
  int olusturulanSayi = Random().nextInt(60);
  // 0 dan 60 a kadar rastgele sayılar oluşturacak ve olustulanSayi ya atayacak.
  if(olusturulanSayi !=0){
    return olusturulanSayi;
  } else{
    int yeniSayi = rastgeleOgrenciNoOlustur();
    return yeniSayi;  
  }
}

class Ogrenci{
  String ad;
  int no;

  Ogrenci(this.ad,this.no);

@override
  String toString() {
    // TODO: implement toString
    return "Ogrenci Ad: $ad ve numarası $no";
  }
}