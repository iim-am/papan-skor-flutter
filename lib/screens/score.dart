import 'package:flutter/material.dart';
import 'package:score_counter/models/team.dart';

class TeamScore extends StatefulWidget {
  @override
  _TeamScoreState createState() => _TeamScoreState();
}

class _TeamScoreState extends State<TeamScore> {
  Team teamOne;
  Team teamTwo;

  @override
  void initState() {
    super.initState();
  }

  // method ini dijalankan setelah initState oleh Flutter
  @override
  void didChangeDependencies() {
    // terima argumen ke var args
    final args =
        ModalRoute.of(context).settings.arguments as Map<String, dynamic>;
    teamOne = args['teamOne'];
    teamTwo = args['teamTwo'];
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Skor')),
      body: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        Expanded(
          flex: 1,
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Container(
                margin: EdgeInsets.symmetric(vertical: 32, horizontal: 12),
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.blueAccent)),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Text(
                    teamOne.name,
                    style: Theme.of(context).textTheme.headline3,
                  ),
                )),
            FloatingActionButton(
                heroTag: 'btnTeamOneDecreaseScore',
                onPressed: () => {
                      // mengubah skor akan memanggil build() lagi
                      setState(() => {teamOne.addScoreBy(-1)})
                    },
                child: Icon(Icons.remove, size: 24),
                backgroundColor: Colors.red),
            Padding(
                padding: EdgeInsets.symmetric(vertical: 24),
                child: Text(teamOne.score.toString(),
                    style: Theme.of(context).textTheme.headline3)),
            FloatingActionButton(
                heroTag: 'btnTeamOneIncreaseScore',
                onPressed: () => {
                      setState(() => {teamOne.addScoreBy(1)})
                    },
                child: Icon(Icons.add, size: 24),
                backgroundColor: Colors.green),
          ]),
        ),
        Expanded(
          flex: 1,
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Container(
                margin: EdgeInsets.symmetric(vertical: 32, horizontal: 12),
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.blueAccent)),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Text(
                    teamTwo.name,
                    style: Theme.of(context).textTheme.headline3,
                  ),
                )),
            FloatingActionButton(
                heroTag: 'btnTeamTwoDecreaseScore',
                onPressed: () => {
                      setState(() => {teamTwo.addScoreBy(-1)})
                    },
                child: Icon(Icons.remove, size: 24),
                backgroundColor: Colors.red),
            Padding(
                padding: EdgeInsets.symmetric(vertical: 24),
                child: Text(
                  teamTwo.score.toString(), //widget.teamTwo.score.toString(),
                  style: Theme.of(context).textTheme.headline3,
                )),
            FloatingActionButton(
                heroTag: 'btnTeamTwoIncreaseScore',
                onPressed: () => {
                      setState(() => {teamTwo.addScoreBy(1)})
                    },
                child: Icon(Icons.add, size: 24),
                backgroundColor: Colors.green),
          ]),
        )
      ]),
    );
  }
}
