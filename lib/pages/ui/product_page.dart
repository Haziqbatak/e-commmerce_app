part of '../pages.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  List suggestionsProduct = [
    'assets/image_shoes.png',
    'assets/image_shoes2.png',
    'assets/image_shoes3.png',
    'assets/image_shoes4.png',
    'assets/image_shoes5.png',
    'assets/image_shoes6.png',
    'assets/image_shoes7.png',
    'assets/image_shoes8.png',
  ];

  var currentIndex;

  List imagesProduct = [
    'assets/image_shoes.png',
    'assets/image_shoes2.png',
    'assets/image_shoes3.png',
  ];

  @override
  Widget build(BuildContext context) {
    Widget indicatorBar(int index) {
      return Container(
        width: currentIndex == index ? 30 : 10,
        height: 10,
        margin: const EdgeInsets.symmetric(horizontal: 2),
        decoration: BoxDecoration(
          color: currentIndex == index ? priceColor : Colors.white,
          borderRadius: currentIndex == index
            ? BorderRadius.circular(10)
          : BorderRadius.circular(5)
        ),
      );
    }

    Widget header() {
      return Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 20, right: 20, left: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    padding: const EdgeInsets.all(1),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: backgroundColor1,
                    ),
                    child: const Icon(
                      Icons.chevron_left,
                      size: 30,
                      color: Colors.white,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (){},
                  child: Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: backgroundColor1,
                    ),
                    child: const Icon(
                      Icons.shopping_bag,
                      size: 25,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
          ),
          CarouselSlider(
              items: imagesProduct
                  .map((element) => Image.asset(
                        element,
                        width: MediaQuery.of(context).size.width,
                        fit: BoxFit.cover,
                      ))
                  .toList(),
              options: CarouselOptions(
                height: 210,
                viewportFraction: 1,
                enableInfiniteScroll: false,
                autoPlay: true,
                enlargeCenterPage: true,
                onPageChanged: (index, reason) {
                  setState(() {
                    currentIndex = index;
                  });
                }
              ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Row(
                  children: [
                    for(var i = 0; i < imagesProduct.length ; i++)
                      indicatorBar(i),

                  ],
                ),
              )
            ],
          ),
        ],
      );
    }

    Widget content() {
      return Container(
        margin: const EdgeInsets.only(top: 20),
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: backgroundColor1,
          borderRadius: const BorderRadius.vertical(
            top: Radius.circular(20)
          )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Shoes Arei V.2.0 - No Limit', style: primaryTextStyle.copyWith(fontSize: 18, fontWeight: semiBold),),
            Text('Mountain - Hiking', style: primaryTextStyle.copyWith(fontSize: 16, fontWeight: regular),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  NumberFormat.currency(
                    locale: 'id-ID',
                    symbol: 'IDR',
                    decimalDigits: 0,
                  ).format(750000),
                  style: primaryTextStyle.copyWith(
                    fontSize: 18,
                    fontWeight: semiBold
                  ),
                ),
                Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    color: backgroundColor5,
                    borderRadius: BorderRadius.circular(25)
                  ),
                  child: const Icon(Icons.favorite, color: Colors.redAccent,),
                )
              ],
            ),
            const SizedBox(height: 20,),
            Text('Descriptions', style: primaryTextStyle. copyWith(fontSize: 20, fontWeight: semiBold),),
            const SizedBox(height: 10,),
            Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin maximus quam metus, et sollicitudin ante finibus vitae. Ut placerat diam nec nisl varius ornare. Nulla in vulputate nunc, vitae semper purus. Phasellus aliquam est ac eros euismod placerat. Aenean felis lorem, rutrum id felis id, maximus dictum felis. Vestibulum molestie tincidunt mi, eget imperdiet risus luctus vel. Mauris eget tellus sed quam tempus vehicula. Proin semper purus non euismod gravida.',
              style: primaryTextStyle.copyWith(
                fontWeight: regular,
                fontSize: 14,
                letterSpacing: 0.5,
              ),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 20,),
            Text('Color', style: primaryTextStyle. copyWith(fontSize: 20, fontWeight: semiBold),),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    margin: const EdgeInsets.only(right: 16),
                    decoration: BoxDecoration(
                      color: backgroundColor5,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        color: Colors.white
                      )
                    ),
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    margin: const EdgeInsets.only(right: 16),
                    decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                            color: Colors.white
                        )
                    ),
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    margin: const EdgeInsets.only(right: 16),
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                            color: Colors.white
                        )
                    ),
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    margin: const EdgeInsets.only(right: 16),
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                            color: Colors.white
                        )
                    ),
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    margin: const EdgeInsets.only(right: 16),
                    decoration: BoxDecoration(
                        color: Colors.cyanAccent,
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                            color: Colors.white
                        )
                    ),
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    margin: const EdgeInsets.only(right: 16),
                    decoration: BoxDecoration(
                        color: Colors.purple,
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                            color: Colors.white
                        )
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20,),
            Text('Size', style: primaryTextStyle. copyWith(fontSize: 20, fontWeight: semiBold),),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    margin: const EdgeInsets.only(right: 16),
                    decoration: BoxDecoration(
                        color: backgroundColor1,
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                            color: Colors.white
                        )
                    ),
                    child: Center(
                      child: Text(
                        '38',
                        style: primaryTextStyle.copyWith(
                          fontSize: 16,
                          fontWeight: semiBold,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    margin: const EdgeInsets.only(right: 16),
                    decoration: BoxDecoration(
                        color: backgroundColor1,
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                            color: Colors.white
                        )
                    ),
                    child: Center(
                      child: Text(
                        '39',
                        style: primaryTextStyle.copyWith(
                          fontSize: 16,
                          fontWeight: semiBold,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    margin: const EdgeInsets.only(right: 16),
                    decoration: BoxDecoration(
                        color: backgroundColor1,
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                            color: Colors.white
                        )
                    ),
                    child: Center(
                      child: Text(
                        '40',
                        style: primaryTextStyle.copyWith(
                          fontSize: 16,
                          fontWeight: semiBold,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    margin: const EdgeInsets.only(right: 16),
                    decoration: BoxDecoration(
                        color: backgroundColor1,
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                            color: Colors.white
                        )
                    ),
                    child: Center(
                      child: Text(
                        '41',
                        style: primaryTextStyle.copyWith(
                          fontSize: 16,
                          fontWeight: semiBold,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    margin: const EdgeInsets.only(right: 16),
                    decoration: BoxDecoration(
                        color: backgroundColor1,
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                            color: Colors.white
                        )
                    ),
                    child: Center(
                      child: Text(
                        '42',
                        style: primaryTextStyle.copyWith(
                          fontSize: 16,
                          fontWeight: semiBold,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    margin: const EdgeInsets.only(right: 16),
                    decoration: BoxDecoration(
                        color: backgroundColor1,
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                            color: Colors.white
                        )
                    ),
                    child: Center(
                      child: Text(
                        '43',
                        style: primaryTextStyle.copyWith(
                          fontSize: 16,
                          fontWeight: semiBold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20,),
            Text('Suggestions', style: primaryTextStyle. copyWith(fontSize: 20, fontWeight: semiBold),),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: suggestionsProduct.map((e) {
                  return Container(
                    margin: const EdgeInsets.only(right: 16),
                    width: 150,
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: backgroundColor6,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 150,
                          height: 100,
                          decoration: BoxDecoration(
                            color: backgroundColor5,
                            borderRadius: BorderRadius.circular(8),
                            image: DecorationImage(image: AssetImage(e), fit: BoxFit.cover)
                          ),
                        ),
                        Text(
                          'Shoes Arei V.2.0 - No Limit',
                          style: primaryTextStyle.copyWith(
                            fontSize: 10,
                            fontWeight: semiBold,
                            color: priceColor
                          ),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                        ),
                        Text(
                          NumberFormat.currency(
                            locale: 'id-ID',
                            symbol: 'IDR',
                            decimalDigits: 0,
                          ).format(750000),
                          style: primaryTextStyle.copyWith(
                              fontSize: 10,
                            color: priceColor,
                            fontWeight: semiBold
                          ),
                        ),
                      ],
                    ),
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor6,
      body: ListView(
        children: [
          header(),
          content()
        ],
      ),
    );
  }
}
