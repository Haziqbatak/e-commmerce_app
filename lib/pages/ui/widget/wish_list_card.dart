part of 'widget.dart';

class WishListCard extends StatelessWidget {
  const WishListCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 12),
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: backgroundColor3,
        borderRadius: BorderRadius.circular(15)
      ),
      child: Row(
        children: [
          ClipRRect(
              child: Image.asset('assets/image_shoes.png', width: 64,)
          ),
          SizedBox(width: 12,),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Arei Shoes V.2.0 - Black',
                  style: primaryTextStyle,
                ),
                Text(
                  NumberFormat.currency(
                    locale: 'id-ID',
                    decimalDigits: 0,
                    symbol: 'IDR'
                  ).format(750000),
                  style: priceTextStyle,
                )
              ],
            ),
          ),
          SizedBox(width: 12,),
          GestureDetector(
            onTap: (){},
            child: Image.asset('assets/button_wishlist_blue.png', width: 34,),
          )
        ],
      )
    );
  }
}
