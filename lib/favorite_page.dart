import 'package:flutter/material.dart';
import 'package:namer_2/app_state.dart';
import 'package:provider/provider.dart';

class FavoritesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var appState = Provider.of<MyAppState>(context);

    if (appState.favorites.isEmpty) {
      return Center(
        child: Text('No favorites yet.'),
      );
    }

    return ListView.builder(
      itemBuilder: (context, _) {
        return Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Text('You have ${appState.favorites.length} favorite here'),
              for (var pair in appState.favorites)
                ListTile(
                  leading: Icon(Icons.favorite),
                  title: Text(pair.asLowerCase),
                )
            ],
          ),
        );
      },
    );
  }
}
