buatGambar(input){
  var gmb = "";
  if(input%2 == 1){
    for(var i=0; i<input; i++){
      for(var j=0; j<input; j++){
        if(i==j){
          gmb += 'x ';
        }else if(j == input-1-i){
          gmb += 'x ';
        }else{
          gmb += '= ';
        }
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