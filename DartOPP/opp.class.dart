main() {
  universeOne marvel = universeOne();
  universeTwo dc = universeTwo();
  print(marvel.bestMovie);
  print(dc.bestMovie);
}

class universeOne {
  var bestMovie = "Avangers Endgame";
  var latestMove = "Gardian of the Glaxy: Vol 3";
  var myFavouriteChracter = "Spiderman and Ironman";
  var totalMoviesCount = "26";
}

class universeTwo {
  var bestMovie = "Flash";
  var latestMove = "Flash";
  var myFavouriteChracter = "Superman";
  var totalMoviesCount = "20";
}
