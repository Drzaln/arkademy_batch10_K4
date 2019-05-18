import 'dart:math';

var data = ['h','g','a','b','d','f'];
var dataLain = ['a','b','c','d'];

minmax(data){
  for(var i=0; i<data.length; i++){
    var minus = data.reduce(min);
    var maxus = data.reduce(max);

    if(maxus < minus){
      data.reduce(max(a));
    }
  }
}

main(){
  minmax(dataLain);
}