/*
*SORU 1: 3 tane double değişken oluşturup bunların ortalamasını yazdıran programı yazınız.
*SORU 2: Kenarlarını girdiğiniz üçgenin çeşidini yazdıran programı yazınız.
*SORU 3: Vize ve final notlarını alıp dersi geçip geçmediğini bulan programı yazınız.
(geçme notu alt değeri = 50, vizenin %40 finalin %60ı alınır.)

*SORU4: Kendi adınızı ekrana 5 kere yazdıran uygulamayı tüm dönü ifadeleriyle yazınız.
*SORU5: 1'den 100'e kadar olan ve 15 ile tam bölünen sayıların karelerini ekrana yazdırınız.
*SORU6: Tanımlanan int bir sayının faktöriyelini bulan uygulamayı yazınız.





*/
main(List<String> args) {
  print("SORU 1");
  double x,y,z,sonuc;
  x=15.5;
  y=12.6;
  z=25.3;
  sonuc= (x+y+z)/3;
  print(sonuc);

  print("**********************");
  print("SORU 2");
  int kenar1,kenar2,kenar3;
  kenar1=6;
  kenar2=2;
  kenar3=4;

  if(kenar1==kenar2 && kenar1==kenar3){
    //atama değil de karşılaştırma yaptığımız için iki tane == koyuyoruz.
    print('Eş kenar üçgen');
  }else if (kenar1==kenar2 && kenar1 !=kenar3){
    print("İkiz kenar üçgen");
  }else if (kenar1==kenar3 && kenar1 !=kenar2){
    print("İkiz kenar üçgen");
  }else if (kenar2==kenar3 && kenar2 !=kenar1){
    print("İkiz kenar üçgen");
  }
  else{
    print("Çeşit kenar üçgen");
  }
 print("**********************");
 print("SORU 3");
 double sinavVize,sinavFinal,ortalama;
 sinavVize=30;
 sinavFinal=100;
ortalama= ((sinavVize*40)/100) + ((sinavFinal*60)/100);

 if(ortalama>50){
   print("$ortalama not ile bu dersi GEÇTİNİZ");
 }else{
   print("$ortalama not ile bu dersten KALDINIZ");
 }

 print("**********************");
 print("SORU 4");
 print("for ile yazımı:");

 for(int i=0; i<5; i++){
   print("Yusuf Taha KARA");
 }

  print("while ile yazımı:");
int i=0;
while(i<5){
  print("Yusuf Taha KARA");
  i++;
}

  print("do_while ile yazımı:");
  int k=0;
  do{
    print("Yusuf Taha KARA");
    k++;
    }while(k<5);

 print("**********************");
 print("SORU 5");
 print("1 ile 100 arasındaki 15'e tam bölünen sayıların kareleri:");
 for(int sayi=1; sayi<100; sayi++){
   if(sayi%3==0 && sayi%5==0){
     print("$sayi'nın karesi = ${sayi*sayi}");
   }
 }

 print("**********************");
 print("SORU 6");
 int sayi2=6;
 int faktoriyel=1;
 int sayac2=1;

 while(sayac2<=sayi2){
 faktoriyel= faktoriyel*sayac2;
 sayac2++;
 }
print("girdiginiz $sayi2 sayısının faktoriyeli : $faktoriyel");



}


