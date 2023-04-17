class Player {
  String name;
  String club;
  int shirtNumber;
  int rating;
  String imageURL;

  Player(this.name, this.club, this.rating, this.shirtNumber, this.imageURL);
}

List<Player> players = [
  Player("Raheem Sterling", "Manchester City", 94, 7,
      "https://resources.premierleague.com/premierleague/photos/players/250x250/p103955.png"),
  Player("Mesut Özil", "Arsenal", 94, 11,
      "https://resources.premierleague.com/premierleague/photos/players/250x250/p37605.png"),
  Player("Virgil van Dijk", "Liverpool FC", 94, 4,
      "https://resources.premierleague.com/premierleague/photos/players/250x250/p97032.png"),
  Player("Sergio Agüero", "Manchester City", 94, 10,
      "https://resources.premierleague.com/premierleague/photos/players/250x250/p37572.png"),
  Player("Mohamed Salah", "Liverpool FC", 94, 10,
      "https://resources.premierleague.com/premierleague/photos/players/250x250/p118748.png"),
];

String loremIpsumText =
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum";
