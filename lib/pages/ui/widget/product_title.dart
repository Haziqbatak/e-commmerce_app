part of 'widget.dart';

class ProductTitle extends StatelessWidget {
  const ProductTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, '/product-page');
      },
      child: Container(
        margin: EdgeInsets.only(top: 20),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
                child: Image.asset('assets/image_shoes.png', width: 120,)
            ),
            SizedBox(width: 12,),
            Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Shoe Mountain Papandayan 2.0', style: primaryTextStyle.copyWith(fontSize: 16, fontWeight: semiBold, letterSpacing: 1), overflow: TextOverflow.ellipsis, maxLines: 2,),
                    Text(NumberFormat.currency(
                      locale: 'id-ID',
                      symbol: 'IDR ',
                      decimalDigits: 0,
                    ).format(750000),
                    style: priceTextStyle.copyWith(fontSize: 15, fontWeight: medium, color: Colors.white),)
                  ],
                )
            ),
          ],
        )
      ),
    );
  }
}
