var data = ['h','g','a','b','d','f'];
var dataLain = ['a','b','c','d'];

minmax(data){
  var datum = data.length;
  for(var i=0;i<datum;i++){
    data.sort();
  }
  return print(data);
}

main(){
  minmax(data);
}