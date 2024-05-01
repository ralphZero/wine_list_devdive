import 'package:flutter/material.dart';

class WineItem extends StatelessWidget {
  final Map<String, dynamic> wineData;
  final bool isFavorite;
  final void Function() onFavorite;

  const WineItem({
    super.key,
    required this.wineData,
    required this.isFavorite,
    required this.onFavorite,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      padding: const EdgeInsets.all(16),
      width: double.infinity,
      color: Colors.grey[200],
      child: Row(
        children: [
          Image.network(
            wineData['image'],
            height: 92,
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  wineData['winery'],
                  style: const TextStyle(
                    fontSize: 18,
                    fontFamily: 'Italiana',
                  ),
                ),
                Text(
                  wineData['wine'],
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '\$${wineData['price']}',
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    IconButton(
                      onPressed: onFavorite,
                      icon: Icon(
                        isFavorite
                            ? Icons.favorite_rounded
                            : Icons.favorite_border_rounded,
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
