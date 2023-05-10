/*
*Map yapısı da set gibi sırasız bir  şekilde elemanları saklayan bir koleksiyon ögesidir.
*Bu yapıyı listelerden ve setten ayıran özellik ise elemanları 'key-value olarak saklamasıdır.
*Herhangi bir veri türü kullanılabilir ama  burada önemli olan key değerlerin unique yani eşsiz olması gerekmektedir.

*Map yapısı sözlüğe benzetebiliriz. Tıpkı sözlük gibi birbirinden farklı elemanları içerir.
*Sabit uzunlukta değildir, dinamik uzunluğa sahiptir.
*/

main(List<String> args) {
  //var mapYapim=Map(); diye  de oluşturulabilir.
  Map<String,int> sehirTelKodlari= {
    "Ankara": 0312,
    "Bursa" : 0224,
    "Konya" : 0332
  };

  print("Ankara'nın şehir tel kodu : ${sehirTelKodlari["Ankara"]}");





  Map<String,Object> kisiler=Map();
  //Map<key in türü, key in karşılığındaki veri türü(herhangi bir veri türü gelebilir diyorsan : Object)>

 kisiler["ad"]="emre";
 kisiler["yas"]=30;
 kisiler["erkekMi"]= true;


//ELEMANLARI GEZMEK
print("");
print("Sadece key leri gezmek için : ");
for(String key in kisiler.keys){
  print("key değeri : $key");
}

print("");
print("Sadece value leri gezmek için : ");
for(Object deger in kisiler.values){
  print("key değeri : $deger");
}

print("");
print("Her İKİSİNİ de görmek için");
kisiler.forEach((anahtar,deger) => print("key : $anahtar value : $deger"));

print("");
print("Update'den önce yaş:");
print(kisiler["yas"]);
//map te köşeli parantez içerisinde istediğinin değerini yazdırmak için

print("");
print("Update'den sonra yaş");
kisiler.update("yas", (value) => 32);
print(kisiler["yas"]);




}