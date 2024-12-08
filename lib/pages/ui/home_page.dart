part of '../pages.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  Widget header() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: defaultMargin),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Kina Mekoichi',
                  style: primaryTextStyle.copyWith(
                      fontWeight: semiBold, fontSize: 24),
                ),
                Text(
                  'Let\'s explore your world!',
                  style: subtitleTextStyle.copyWith(fontWeight: semiBold),
                )
              ],
            ),
          ),
          Container(
            height: 55,
            width: 55,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(
                  'assets/image_profile.png',
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget category() {
    return Container(
      margin: EdgeInsets.only(right: defaultMargin),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            const SizedBox(width: 30,),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              decoration: BoxDecoration(
                  color: primaryColor, borderRadius: BorderRadius.circular(12)),
              child: Text(
                'All Products',
                style:
                    primaryTextStyle.copyWith(fontWeight: medium, fontSize: 15),
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              decoration: BoxDecoration(
                  color: transparentColor,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: borderColor)),
              child: Text(
                'Shoes',
                style:
                    primaryTextStyle.copyWith(fontWeight: medium, fontSize: 15),
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              decoration: BoxDecoration(
                  color: transparentColor,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: borderColor)),
              child: Text(
                'Carrier',
                style:
                    primaryTextStyle.copyWith(fontWeight: medium, fontSize: 15),
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              decoration: BoxDecoration(
                  color: transparentColor,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: borderColor)),
              child: Text(
                'Tent',
                style:
                    primaryTextStyle.copyWith(fontWeight: medium, fontSize: 15),
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              decoration: BoxDecoration(
                  color: transparentColor,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: borderColor)),
              child: Text(
                'Carrier',
                style:
                    primaryTextStyle.copyWith(fontWeight: medium, fontSize: 15),
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              decoration: BoxDecoration(
                  color: transparentColor,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: borderColor)),
              child: Text(
                'Shirt',
                style:
                    primaryTextStyle.copyWith(fontWeight: medium, fontSize: 15),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget popularProductTitle() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: defaultMargin),
      child: Text(
        'Popular Products', style: primaryTextStyle.copyWith(fontSize: 22, fontWeight: semiBold),
      ),
    );
  }

  Widget popularProduct() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: defaultMargin),
      child: const SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            ProductCard(),
            ProductCard(),
            ProductCard(),
          ],
        ),
      ),
    );
  }

  Widget newArrivalTitle() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: defaultMargin),
      child: Text(
        'New Arrival', style: primaryTextStyle.copyWith(fontSize: 22, fontWeight: semiBold),
      ),
    );
  }

  Widget newArrivalProduct(){
    return Container(
      margin: EdgeInsets.symmetric(horizontal: defaultMargin),
      child: const Column(
        children: [
          ProductTitle(),
          ProductTitle(),
          ProductTitle(),
          ProductTitle(),
          ProductTitle(),
          ProductTitle(),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor1,
      body: ListView(
        children: [
          header(),
          const SizedBox(height: 15),
          category(),
          const SizedBox(height: 30,),
          popularProductTitle(),
          const SizedBox(height: 15,),
          popularProduct(),
          const SizedBox(height: 30,),
          newArrivalTitle(),
          newArrivalProduct()
        ],
      ),
    );
  }
}
