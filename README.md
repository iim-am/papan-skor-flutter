# Score Counter

App sederhana untuk mencatat skor dua tim dengan tombol + dan -. Nama tim bisa di set.

App ini menggunakan instansi dari kelas `Team` yang akan digunakan sebagai variabel state pada Stateful Widget:

```dart
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
```

![](https://gitlab.com/gcpn/flutter-score-counter/-/raw/master/Screenshot_20201102-192903_score_counter.png)

#### by Gottfried