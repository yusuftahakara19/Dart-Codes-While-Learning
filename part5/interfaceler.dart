main(List<String> args) {

  var tv=Televizyon();
  nesneleriCalistir(tv);

  var sesSistemi=SesSistemi();
  nesneleriCalistir(sesSistemi);

  List<Kumanda> sss=List();
  
  sss.add(tv);
  sss.add(sesSistemi);
  
  }

void nesneleriCalistir(Kumanda k){
  k.sesAc();
  k.sesAzalt();
}







//İki farklı sınıf tanımlayıp interface miş gibi kullanacağız

class Kumanda{
  
  void sesAc(){
    print("Kumanda sınıfı ses aç metodu");
  }

  void sesAzalt(){
    print("Kumanda sınıfı ses azaltma metodu");
  }
}

class BirDigerSinif{
  void herhangiBirMethot(){
    print("Herhangi bir metot tetiklendi");
  }
}

//interfaceler ortak özellik olan ama aralarında kalıtımsal olarak bağlantılı olmayan yapıları bir arada tutmayı sağlar.

//interfacede tanımlı metodları bunu implement eden  sınıflar yazmak zorundadır.
class Televizyon  implements Kumanda, BirDigerSinif{
   
   @override
   void sesAc(){
    print("Televizyon sınıfı ses aç metodu");
  }

  @override
  void sesAzalt(){
    print("Televizyon sınıfı ses azaltma metodu");
  }

  @override
  void herhangiBirMethot(){
    print("Herhangi bir metot tetiklendi");
  }
}

class SesSistemi implements Kumanda{

  void sesAc(){
    print("Ses sistemi sınıfı ses aç metodu");
  }

  void sesAzalt(){
    print("Ses sistemi sınıfı ses azaltma metodu");
  }

}