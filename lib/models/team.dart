class Team {
  String name;
  int score = 0;

  // konstruktor dengan nama 'named'
  Team.named(this.name);

  // dalam contoh ini tidak diperbolehkan skor < 0
  void addScoreBy(int score) {
    this.score = this.score == 0 && score < 0 ? 0 : this.score + score;
  }
}
