import 'package:flutter/material.dart';

import 'player_details_page.dart';
import 'player_model.dart';

class PlayersList extends StatelessWidget {
  const PlayersList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Week's top 5".toUpperCase(),
          textAlign: TextAlign.start,
          style: const TextStyle(fontSize: 25),
        ),
      ),
      backgroundColor: Colors.greenAccent,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: players.map((player) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context) => PlayerDetailsPage(player)),
                  );
                },
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: <Widget>[
                        Hero(
                          tag: player.name,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(200),
                            child: Image.network(
                              player.imageURL,
                              height: 70,
                              width: 70,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                player.name,
                                style: Theme.of(context).textTheme.headline5,
                              ),
                              Text(
                                "${player.shirtNumber}   ${player.club}",
                                style: Theme.of(context).textTheme.subtitle1,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
