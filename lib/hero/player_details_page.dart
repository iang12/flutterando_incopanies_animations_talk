import 'package:flutter/material.dart';

import 'player_model.dart';

class PlayerDetailsPage extends StatelessWidget {
  const PlayerDetailsPage(this.player, {super.key});

  final Player player;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      appBar: AppBar(
        title: const Text("Player Details", style: TextStyle(fontSize: 25)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(36.0),
        child: ListView(
          children: <Widget>[
            Stack(
              fit: StackFit.loose,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Image.network(fifaCardBG),
                    Container(
                      height: 24,
                    ),
                    Text(
                      loremIpsumText,
                      textAlign: TextAlign.center,
                      style: const TextStyle(color: Colors.white, fontSize: 20),
                    )
                  ],
                ),
                Column(
                  children: <Widget>[
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 84, left: 24, right: 24),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Text(
                                player.rating.toString(),
                                style: const TextStyle(fontSize: 52),
                              ),
                              const Text(
                                "LW",
                                style: TextStyle(fontSize: 28),
                              ),
                              const SizedBox(height: 48),
                              Text(
                                player.shirtNumber.toString(),
                                style: const TextStyle(fontSize: 32),
                              )
                            ],
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Hero(
                              tag: player.name,
                              child: Image.network(
                                player.imageURL,
                                height: 180,
                                width: 180,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 32,
                    ),
                    Text(
                      player.name,
                      style: const TextStyle(fontSize: 32),
                    ),
                    Text(
                      player.club,
                      style: const TextStyle(fontSize: 24),
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

String fifaCardBG = "https://fut-watch.com/img/20/card/goldrare_gold.png";
