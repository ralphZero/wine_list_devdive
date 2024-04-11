import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:wine_list_devdive/data/wine_data.dart';
import 'package:wine_list_devdive/widgets/wine_banner.dart';
import 'package:wine_list_devdive/widgets/wine_item.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late List<dynamic> favoriteWineList = [];
  late SharedPreferences prefs;

  @override
  void initState() {
    super.initState();
    SharedPreferences.getInstance().then((value) {
      prefs = value;
      setState(() {
        var favoriteWineListJson = value.getString('favoriteWineList');
        favoriteWineList = favoriteWineListJson != null
            ? jsonDecode(favoriteWineListJson)
            : [];
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Wine Collection',
          style: TextStyle(fontFamily: 'italiana', fontSize: 24),
        ),
        centerTitle: false,
      ),
      body: Column(
        children: [
          const WineBanner(),
          Expanded(
            child: ListView(
              children: wineDataList.map((wine) {
                var isFavorite = favoriteWineList
                    .any((wineItem) => wineItem['id'] == wine['id']);
                return WineItem(
                  wineData: wine,
                  isFavorite: isFavorite,
                  onFavorite: () {
                    setState(() {
                      if (isFavorite) {
                        favoriteWineList.removeWhere(
                            (wineItem) => wineItem['id'] == wine['id']);
                      } else {
                        favoriteWineList.add(wine);
                      }
                      prefs.setString(
                          'favoriteWineList', jsonEncode(favoriteWineList));
                    });
                  },
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
