main() {
  Spacfication mobileX = Spacfication();
  mobileX.model = "Samsung";
  print(mobileX.model);

  Spacfication mobileY = Spacfication();
  mobileY.model = "Nokia";
  print(mobileY.model);
}

class Spacfication {
  var model;
  var releseYear;
  var memerySize;
}
