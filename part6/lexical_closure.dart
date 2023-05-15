
//closure özel bir fonksiyondur, closure ile bir üst kapsamdaki değişkenlerin değerlerini değiştirebiliriz.

main(List<String> args) {
  String isim ="emre";


//Normalde süslü parantezlerin içinde değişkenlere erişemezken şimdi erişebiliyoruz.
  Function  ismimiGoster = (){
    isim ="Emre Altunbilek";
    print(isim);
    };

    ismimiGoster();

  
   
   Function konus = (){
     
     String selam = "Merhaba";

     Function soyle = (){
       selam = "Selamın aleyküm";
       print(selam);
     };

     return soyle;
   };
     

 var fonksiyonuAl=konus();

 fonksiyonuAl();


}