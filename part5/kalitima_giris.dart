import 'dart:async';

main(List<String> args) {
  
  var kopek1 =Kopek();
  //kopek1.renk="siyah";
  print("renk : ${kopek1.renk}");
  kopek1.cins="labrador";
  kopek1.havla();
  kopek1.yemekYe();

  var kedi1=Kedi();
  //kedi1.renk="beyaz";
  print("renk : ${kedi1 .renk}" );
  kedi1.yas=2;    
  kedi1.miyavla();
  kedi1.yemekYe();


}

//Kedi ile Köpek sınıflarında ortak şeyler var. Hayvan sınıfını oluşturalım.


//Gözükmese bile yapıdaki en üst sınıfın aslında onun da üstü Object sınıfına bağlıdır.

class Hayvan extends Object{
String renk = "sarı";
void yemekYe(){
print("Hayvan yemek yiyor");
}
}

class Kedi extends Hayvan{

 //String renk; (Hayvan sınıfında var kullanmak zorunda değiliz.)
 int yas;

 void miyavla(){
   print("Miyaavv");
 }

 @override
  void yemekYe() {
    print("kedi yemek yiyor.");
  //  super.yemekYe();  üst sınıftaki yeri de çalıştırmak için

  }

}



class Kopek extends Hayvan{

//String renk;
String cins;

void havla(){
 print("Hav hav");
}

@override
  void yemekYe() {
    print("Kopek yemek yiyor.");
  //  super.yemekYe();
  }

}