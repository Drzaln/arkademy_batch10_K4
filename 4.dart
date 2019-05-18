buatGambar(input){
  var gmb = "";
  if(input%2 == 1){
    for(var i=0; i<input; i++){
      for(var j=0; j<input; j++){
        i==j ? gmb += 'x ' : j == input-1-i ? gmb += 'x ' : gmb += '= ';
      }
      gmb += '\n';
    }
    print(gmb);
  }else{
    print('Hanya menerima parameter angka ganjil');
  }
}

main(){
  buatGambar(7);
}