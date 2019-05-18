class bioToJson{
  String name;
  String address;
  var hobbies;
  bool is_married;
  String highSchool;
  String university;
  String nama;
  String score;

  Map toJson(){
    return {"name": name, "address": address, "hobbies": hobbies, "is_married": is_married, "school": {"highSchool": highSchool, "university": university}, "skills": [{"name": nama, "score": score}]};
  }
}

main(){
  var bio = new bioToJson();
  bio.name = 'Doddy Rizal Novianto';
  bio.address = 'Jalan margasatwa';
  bio.hobbies = ['makan', 'minum', 'tidur'];
  bio.is_married = false;
  bio.highSchool = 'MAN 1 Klaten';
  bio.university = 'Universitas Negeri Semarang';
  bio.nama = 'Flutter';
  bio.score = '70';
  var bioJ = bio.toJson();
  print(bioJ);
}

