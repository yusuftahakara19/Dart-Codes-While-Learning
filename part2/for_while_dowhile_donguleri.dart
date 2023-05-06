import 'dart:svg';

main(List<String> args) {
  print("FOR KULLANIMI");
  for(int i=0; i<=10; i++){
     if(i%2 == 0){
       print('$i');
     }
     //burada değişken olarak kullanılan 'i' nin yaşam alanı yalnızca döngünün içidir.

  }
  //Tekrarlanan bir işlem yapılacaksa ve bunun kaç kere yapılacağı biliniyorsa for döngüsü kullanılır.
  /*
    For döngüsü 3 tane parametre istiyor.
    1. Bu döngüyü kontrol edecek bir değişken
    2. Döngüden çıkmak gerek.
    3. arttırma azaltma
  */
  print("*****************************");
  List isimListesi=["emre","hasan","ali"];
  for(String gecici in isimListesi){
    //isimListesi'ni gez. Her bir okuduğun elemanı gecici değişkenine ata.
    //önce emre yi okudu bunu gecici ye atadı sonra yazdırdı. sonra hasan ı sonra da ali yi.
    print("$gecici");
  }

print("****************************");

//az önceki örneğin bir farklı şekilde yazılımı
for(int i=0; i<isimListesi.length; i++){
  print("Okunan Eleman  "+ isimListesi[i]);
  //isimListesi nde o an okunan i inci elemanı al ve yaz. 0. eleman emre 1. eleman hasan 2. eleman ali
    
}

print("****************************");
print("WHİLE KULLANIMI");

  int sayac = 0;
  while(sayac < 5){
    print("Okunan sayaç değeri $sayac");
    sayac ++;
  }
// while ve dowhile ne kadar tekrarlanacağını bilmediğimiz durumlarda kullanılır.
print("****************************");
print("DOWHİLE KULLANIMI");
//benim bir kodum var bunu bir çalıştır sonra git kontrol yap. denildiğinde dowhile kullanılır.

int sayac2 = 0;
do{
  print("Okunan sayac degeri : $sayac2");
    sayac2++;
}while(sayac2<5);
print("****************************");
print("Break ve Continue");


for(int i=0; i<10; i++){

  if (i>5){
    break;
  }
  print(i);
}
print("****************************");

for(int i=0; i<10; i++){

  if (i>5){
      print(i);
  }
  else{
    continue;
    //continue nun görevi aşağıda bir sürü kod olabilir onları çalıştırma döngünün başına gel demek.
  }
}
print("****************************");

distakiDongu:for(int i=1; i<=10; i++){
  
  for(int j=1; j<=10; j++){
    if(i==2){
      continue distakiDongu;
    }  
    //continue başa dön demek olduğu için 2 ile olanlar hiç yazılmadı.
    print("$i * $j = ${i*j}");  
  }
}
}





