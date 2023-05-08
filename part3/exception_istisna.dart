import 'dart:math';

main(List<String> args) {
  //PROGRAM NORMAL AKIŞINDA ÇALIŞIRKEN AKIŞININ BOZULMAMASI İÇİN YAZILAN BLOKLARA DENİR.
  //Diyelim ki bir dosyadan veri alacağız. O dosya orada yoksa?
  //Bir program yaptığında kullanıcı bölüm yerine 0 yazarsa hata almamak için ne yapmak lazım?
  //HATA ÇIKABİLECEĞİNİ DÜŞÜNDÜĞÜN KODU ''try'' içine al.

  print("Olası Hatanın adı veya sebebi biliniyorsa");
  try {
    int sonuc = 12 ~/ 0;
    // ~ : AltGr + ü 

    print("Bölüm  :  $sonuc");
    //Hatanın nedenini biliyorsan ''on''
  } on IntegerDivisionByZeroException {
    print("Bölen 0  olamaz.");
  }

// Ne olabileceğini bilmediğimiz durumlarda.

  print("\n Hatanın sebebi veya adı bilinmiyorsa");
  try {
    int sonuc = 12 ~/ 0;

    print("Bölüm  :  $sonuc");
  } catch (e) {
    //böyle bir şey olursa catch hatayı yakalıyor ve buna 'e' diyor.
    print("Hata çıktı : $e");
  }

  print(
      "\n Hatanın sebebi veya adı bilinmiyorsa ve stacktrace'i görmek istiyorsak");
  try {
    int sonuc = 12 ~/ 0;

    print("Bölüm  :  $sonuc");
  } catch (e, s) {
    //e nin yanına yazılan şey stacktrace(hata hakkında daha detaylı bilgi istiyorsak.)
    print("Hata çıktı : $e ve stack trace : $s");
  }


// programında hata çıksın çıkmasın çalışacak yer.
// Bir dosyayı açtın ama okuma iznin yok. Finally bloğu kullanarak  o dosyayı kapatabiliriz.
  print(
      "\n Finally Bloğu");
  try {
    int sonuc = 12 ~/ 1;

    print("Bölüm  :  $sonuc");
  } catch (e, s) {
    
    print("Hata çıktı : $e ve stack trace : $s");
  }finally{
    print("Finally bloğu çalıştı");
  }

    print("...............................");

try{
 paraYatir(-60);
}catch(e){
  print("Hata :"+ e.hataGoster());
}

}


//Kendi exception SINIFINI OLUŞTURMA
paraYatir(int miktar){
  if(miktar<0){
    throw new ParaYatirmaException();
  }else{
  print("Hesabınıza $miktar Tl yatırıldı");
  }
}


class ParaYatirmaException implements Exception{
  String hataGoster()=> "Negatif sayı girdiniz.";
   
  
}