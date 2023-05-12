main(List<String> args) {
Er emre = new Er();
Er hasan =Er();
//new yazıp yazmaması önemli değil

Asker asker = Asker();
Yuzbasi ali = Yuzbasi();


// Asker üst sınıf olduğu için her yaptığını alt sınıflar da yapabilir.
hazirOl(asker);
hazirOl(emre); //yukari çevrim upcasting
hazirOl(ali);  //yukari çevrim upcasting

print("!!!!!!");
Asker yeni = Er();
hazirOl(yeni);





}

void hazirOl(Asker asker){
  asker.selamVer();
}




class Asker {
  void selamVer() {
    print("Asker selam verdi");
  }
}

class Er extends Asker {
  @override
  void selamVer() {
    print("Er selam verdi");
  }
}

class Yuzbasi extends Asker {
  @override
  void selamVer() {
    print("Yuzbasi   selam verdi");
  }
}
