main(List<String> args) {
  double sayi1 =9;
  double sayi2= 6;

//ARİTMETİK OPERATÖRLER
  print("$sayi1 + $sayi2 = ${sayi1+sayi2}");
  print("$sayi1 - $sayi2 = ${sayi1-sayi2}");
  print("$sayi1 * $sayi2 = ${sayi1*sayi2}");
  print("$sayi1 / $sayi2 = ${sayi1/sayi2}");
  print("$sayi1 % $sayi2 = ${sayi1%sayi2}");

//ATAMA OPERATÖRLERİ
  
  double sayi3 = 5;
  sayi3 += 5; // sayi3 = sayi3  + 5
  sayi3 %=4;
  print(sayi3);

//MANTIKSAL OPERATÖRLER
// &&, ||. !

bool kosul1= true;
bool kosul2= false;
print(kosul1 && kosul2);
print(kosul1 || kosul2);
print(!kosul1);

//ARTTIRMA VE AZALTMA OPERATÖRLERİ
int sayi5 = 5;
sayi5++;
print(sayi5);
print(sayi5++);//sayi5'i yazdı sonra da 1 arttırdı.
print(++sayi5);//sayi5'i 1 arttırdı ve yazdı.


//İŞLEM ÖNCELİĞİ
/* () önce parantez içi
   ++ ve -- değikenden önce gelenler
   * ve /
   + ve -
   = atama işlemi
   ++ ve -- Değişkenden sonra gelenler
*/
  int s1 = 10, s2 = 5;
  double sonuc = 0;
  sonuc = ((s1 + s2 * 3 -s2) + s2 - s1 *5 + s1).toDouble();
 print(sonuc);

  sonuc = (s1 * s2 + 4 / 2) + (s1++) * s2 + (++s1);
  //s1 başta s2 ile çarpılacak sonra değeri 1 arttırılacak
 print(sonuc);
}