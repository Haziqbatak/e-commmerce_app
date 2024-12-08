part of '../pages.dart';

class WishListPage extends StatelessWidget {
  const WishListPage({super.key});
  PreferredSizeWidget header() {
    return AppBar(
      backgroundColor: backgroundColor1,
      centerTitle: true,
      title: Text(
        'Favorote List',
        style: primaryTextStyle.copyWith(fontSize: 18, fontWeight: medium),
      ),
      elevation: 0,
      automaticallyImplyLeading: false,
    );
  }

  @override
  Widget build(BuildContext context) {
    Widget emptyWishList() {
      return Expanded(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/image_wishlist.png',
              width: 100,
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "You don't have dream items?",
              style: primaryTextStyle.copyWith(fontSize: 16, fontWeight: medium),
            ),
            Text(
              "Let;s find your favorite",
              style: secondaryTextStyle,
            ),
            const SizedBox(height: 20,),
            OutlinedButton(
              onPressed: () {
                Navigator.pushNamed((context), '/main');
              },
              style: OutlinedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
                  side: BorderSide(
                      color: primaryColor
                  )
              ),
              child: Text('Explore store'),
            )
          ],
        ),
      );
    }

    Widget content(){
      return Expanded(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          children: const [
            WishListCard(),
            WishListCard(),
            WishListCard(),
            WishListCard(),
          ],
        ),
      );
    }

    return Column(
      children: [
        header(),
        content()
      ],
    );
  }
}
