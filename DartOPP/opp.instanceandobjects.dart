main() {
  //instance
  Spacfication mobileX = Spacfication();
  mobileX.model = "Samsung";
  print(mobileX.model);

  Spacfication mobileY = Spacfication();
  mobileY.model = "Nokia";
  print(mobileY.model);

  Spacfication mobileZ = Spacfication();
  mobileZ.model = "Motorola";
  print(mobileZ.model);
}

//blueprint 
class Spacfication {
  var model;
  var releseYear;
  var memerySize;
}
