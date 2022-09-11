import 'package:flutter/material.dart';

import 'components/nft_card.dart';

class TrendingTab extends StatelessWidget {
  const TrendingTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NftCard(
      image:
          'https://mir-s3-cdn-cf.behance.net/project_modules/max_1200/50e513115094373.6047d1f4cf3f1.jpg',
    );
  }
}
