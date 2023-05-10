
main(List<String> args) {
  //set ingilizcede küme demektir.
  //List den en önemli farkı elemanları sıralı olarak tutmaz. bu durumda list lerde olduğu gibi indexleri kullanamayız
  //bir diğer farkı ise bir elemandan sadece bir tane olur.

  //index olmadan elemanları kontrol etmek için contains methodu kullanılabilir. onun dışında listelerdeki methodlar set için de geçerlidir.

  Set<String> isimler = Set();
  isimler.add("yusuf");
  isimler.add("yusuf");
  isimler.add("yusuf");
  isimler.add("yusuf");

  isimler.add("emre");
  isimler.add("ali");
  isimler.add("hüseyin");
  isimler.add("hasan");
  isimler.add("kazim");
  //isimler.remove("emre");
 bool sonuc = isimler.remove("emre");
 print("sonuç : $sonuc");
  /*if(isimler.contains("yusuf")){
    print("yusuf");
  }
*/
  for (String s1 in isimler) {
    print("isim : $s1");
  }

print("*******************");
  Set<int> numaralar = Set.from([1,2,3,5,9,8,1,1,1,1]);
  List<int> ciftSayilar = [0,2,4,6,8,10,8,6,4,2,0];
    for (int i1 in numaralar) {
    print("no : $i1");
  }

//Sete ekleme yapmak.
print("*******************");

numaralar.addAll(ciftSayilar);

  for (int i1 in numaralar) {
    print("add all dan sonra no : $i1");
  }

}
