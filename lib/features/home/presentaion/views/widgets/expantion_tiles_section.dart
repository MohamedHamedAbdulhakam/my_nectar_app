import 'package:flutter/material.dart';
import 'package:my_nectar_app/features/home/presentaion/views/widgets/expantion_tile_details_view.dart';

class ExpantionTilesSection extends StatelessWidget {
  const ExpantionTilesSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const  Column(
      children: [
        ExpantionTileDetailsView(title: 'Product Details', description: 'Apples are nutritious. Apples may be good for weight loss. '
           'Apples may be good for your heart. As part of a healthful '
           'and varied diet.',),
           ExpantionTileDetailsView(title: 'Product Details', description: 'Apples are nutritious. Apples may be good for weight loss. '
                  'Apples may be good for your heart. As part of a healthful '
                  'and varied diet.',widget: Text('100gr', style: TextStyle(color: Colors.grey)),),
                 
         ExpantionTileDetailsView(
              title: 'Review',
              description:
                  'Apples are nutritious. Apples may be good for weight loss. '
                  'Apples may be good for your heart. As part of a healthful '
                  'and varied diet.',
              widget: Row(
                children: [
                  Icon(Icons.star, color: Colors.orange, size: 18),
                  Icon(Icons.star, color: Colors.orange, size: 18),
                  Icon(Icons.star, color: Colors.orange, size: 18),
                  Icon(Icons.star, color: Colors.orange, size: 18),
                  Icon(Icons.star_half, color: Colors.orange, size: 18),
                ],
              ),
            ),

      ],
    );
  }
}
