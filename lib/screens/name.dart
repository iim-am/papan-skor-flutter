import 'package:flutter/material.dart';
import 'package:score_counter/models/team.dart';

class TeamName extends StatefulWidget {
  @override
  _TeamNameState createState() => _TeamNameState();
}

class _TeamNameState extends State<TeamName> {
  String teamOneName = 'Tim 1';
  String teamTwoName = 'Tim 2';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Beri Nama Tim'),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.all(24),
                child: TextField(
                  // tidak perlu setState karena akan dilempar ke screen lain
                  onChanged: (text) => {teamOneName = text},
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), labelText: "Nama Tim 1"),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(24),
                child: TextField(
                  // tidak perlu setState karena akan dilempar ke screen lain
                  onChanged: (text) => {teamTwoName = text},
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), labelText: "Nama Tim 2"),
                ),
              ),
              Padding(
                  padding: EdgeInsets.all(24),
                  child: SizedBox(
                      width: double.infinity, // lebar memenuhi parent
                      height: 56,
                      child: ElevatedButton(
                          onPressed: () => {
                                // pindah ke screen baru dan kirim argumen
                                Navigator.pushNamed(context, '/team_score',
                                    arguments: {
                                      'teamOne': Team.named(teamOneName),
                                      'teamTwo': Team.named(teamTwoName)
                                    })
                              },
                          child: Text('MULAI'))))
            ],
          ),
        ));
  }
}
