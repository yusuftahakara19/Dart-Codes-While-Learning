main(List<String> args) {
  //switch te double ve boolen veri tipi yok.

  String notDegeri= "BB";

  switch(notDegeri){
  case "AA":
  print("Notunuz 90-100 arasındadır.");
  break;

  case "BA":
  print("Notunuz 80-90 aralığındadır.");
  break;
 
  case "BB":
  print("Notunuz 70-80 aralığındadır.");
  break;
  
  case "CB":
  print("Notunuz 60-70 aralığındadır.");
  break;

  case "CC":
  print("Notunuz 50-60 aralığındadır.");
  break;

  case "FF":
  print("Notunuz 50'nin aşağısındadır. Çok çalışmalısınız.");
  break;

  default:
  {
    print("Hatalı değer girdiniz");
  }

  }


   int sayi =6;
   int bolum =(sayi/10).toInt();

   switch(bolum){
   case 3:
   print("Sayi 30dan büyüktür");
   break;

   case 2:
   print("Sayi 20'den büyüktür");
   break;

   case 1:
   print("Sayi 10dan büyüktür");
   break;

   case 0:
   print ("Sayi 10dan küçüktür");
   break;




   }


}





