void main(List<String> args) {
  sayilariTopla();
  int fark = sayilariCikar(15, 14);
  print("fark = $fark");
  print( "Çarpım = " +sayilariCarp(10, 20).toString());
  print("Büyük olan sayi :"+maxOlaniBul(25, 16).toString());
  print("Küçük olan sayi :"+minOlaniBul(25, 16).toString());

}

void sayilariTopla(){

 int sayi1=10, sayi2=5;
 print("Toplam = ${sayi1+sayi2}");

}


int sayilariCikar(int s1, int s2){

  return s1-s2;
}

//KISA FONKSİYON KULLANIMI

int sayilariCarp(int s1, int s2) => s1*s2;

/* UZUN YAZIM

int maxOlaniBul (int s1, int s2){
  if (s1<s2){
    return s2;
  }else{
    return s1;
  }
}
*/

//KISA YAZIM
int maxOlaniBul(int s1, int s2) => s1<s2 ? s2 : s1;

int minOlaniBul(int s1, int s2) => s1<s2 ? s1 :s2;