class Game {
  String bgImage;
  String icon;
  String name;

  num score;
  num download;
  num review;
  String description;
  List<String> images;

  Game(this.bgImage, this.icon, this.name, this.score, this.download,
      this.review, this.description, this.images);

  static List<Game> games() {
    return [
      Game(
          'assets/images/ori1.jpg',
          'assets/images/ori_logo.png',
          'Adventure',
          4.8,
          382,
          324,
          "Ori is stranger to persit, but when a fateful flight puts the owlet ku in har'as way.",
          ['assets/images/ori2.jpg','assets/images/ori3.jpg','assets/images/ori4.jpg',]),
      Game(
          'assets/images/ori1.jpg',
          'assets/images/ori_logo.png',
          'Adventure',
          4.8,
          382,
          324,
          "Ori is stranger to persit, but when a fateful flight puts the owlet ku in har'as way.",
          ['assets/images/ori2.jpg','assets/images/ori3.jpg','assets/images/ori4.jpg',]),

          Game(
          'assets/images/ori1.jpg',
          'assets/images/ori_logo.png',
          'Adventure',
          4.8,
          382,
          324,
          "Ori is stranger to persit, but when a fateful flight puts the owlet ku in har'as way.",
          ['assets/images/ori2.jpg','assets/images/ori3.jpg','assets/images/ori4.jpg',]),

          Game(
          'assets/images/ori1.jpg',
          'assets/images/ori_logo.png',
          'Adventure',
          4.8,
          382,
          324,
          "Ori is stranger to persit, but when a fateful flight puts the owlet ku in har'as way.",
          ['assets/images/ori2.jpg','assets/images/ori3.jpg','assets/images/ori4.jpg',]),
    ];
  }
}
