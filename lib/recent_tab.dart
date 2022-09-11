import 'package:flutter/material.dart';
import 'package:nftui/components/nft_card.dart';

class RecentTab extends StatelessWidget {
  const RecentTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NftCard(
      image: 'https://forkast.news/wp-content/uploads/2022/03/NFT-Avatar.png',
    );
  }
}
