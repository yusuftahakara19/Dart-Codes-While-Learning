import 'dart:async';
import 'dart:math';

void main(){
 zincirlenmisFuture();
}

void futureKullanimi(){
  var random = new Random();
 var future = new Future.delayed(new Duration (seconds : 3),(){
   if (random.nextBool()){
     return 100;
   } else{
     throw "boom!";
   }
 });
 future.then((value){
   print("completed with value $value");
 }, onError: (error) {
   print("completed with error $error");
 });
}


void zincirlenmisFuture(){ 
  var future = new Future.value("a").then((v1){   // value a ==> v1 içeriğinde a var.
    return new Future.value ("$v1 b").then((v2){  // value a b==> v2 içerğinde a b var.
      return new Future.value("$v2 c").then((v3){ //value a b c ==> v3 içerğinde a b c var.
        return new Future.value("$v3 d ");         //value a b c
      });
    });
  });
  future.then((sonDeger)=>print("zincirin son değeri : $sonDeger"), onError : print);
}