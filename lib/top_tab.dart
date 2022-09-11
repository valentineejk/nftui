import 'package:flutter/material.dart';

import 'components/nft_card.dart';

class TopTab extends StatelessWidget {
  const TopTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NftCard(
      image:
          'https://www.artnews.com/wp-content/uploads/2022/01/unnamed-2.png?w=631',
    );
  }
}
