part of '../pages.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    PreferredSizeWidget header() {
      return AppBar(
        backgroundColor: backgroundColor1,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_outlined,
            color: Colors.white,
          ),
        ),
        title: Text(
          'Edit Profile',
          style: primaryTextStyle.copyWith(
            fontSize: 20,
            fontWeight: semiBold,
          ),
        ),
      );
    }

    Widget buttonUpdate() {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Container(
          width: double.infinity,
          margin: const EdgeInsets.only(top: 10),
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 20),
          decoration: BoxDecoration(
            color: primaryColor,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Text(
            'Update',
            style: primaryTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
              color: Colors.white
            ),
            textAlign: TextAlign.center,
          ),
        ),
      );
    }

    Widget nameInput() {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Container(
          width: double.infinity,
          margin: const EdgeInsets.only(top: 30),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          decoration: BoxDecoration(
              color: backgroundColor4, borderRadius: BorderRadius.circular(12)),
          child: TextFormField(
            decoration: InputDecoration(
                border: InputBorder.none,
                hintStyle: primaryTextStyle,
                hintText: 'Kina Mekoichi',
                fillColor: backgroundColor4,
                filled: true,
                icon: const Icon(
                  Icons.person,
                  color: Colors.white,
                ),
            ),
            style: primaryTextStyle.copyWith(
              fontSize: 16,
              fontWeight: regular,
              color: Colors.white,
            ),
            keyboardType: TextInputType.text,
          ),
        ),
      );
    }

    Widget usernameInput() {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Container(
          width: double.infinity,
          margin: const EdgeInsets.only(top: 15),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          decoration: BoxDecoration(
              color: backgroundColor4, borderRadius: BorderRadius.circular(12)),
          child: TextFormField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintStyle: primaryTextStyle,
              hintText: 'mkchi',
              fillColor: backgroundColor4,
              filled: true,
              icon: const Icon(
                Icons.shield_sharp,
                color: Colors.white,
              ),
            ),
            style: primaryTextStyle.copyWith(
              fontSize: 16,
              fontWeight: regular,
              color: Colors.white,
            ),
            keyboardType: TextInputType.text,
          ),
        ),
      );
    }

    Widget emailInput() {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Container(
            width: double.infinity,
            margin: const EdgeInsets.only(top: 15),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            decoration: BoxDecoration(
                color: backgroundColor4,
                borderRadius: BorderRadius.circular(12)),
            child: TextFormField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintStyle: primaryTextStyle,
                hintText: 'kinamekoichi@gmail.com',
                fillColor: backgroundColor4,
                filled: true,
                icon: const Icon(
                  Icons.mail_outline,
                  color: Colors.white,
                ),
              ),
              style: primaryTextStyle.copyWith(
                fontSize: 16,
                fontWeight: regular,
                color: Colors.white,
              ),
              keyboardType: TextInputType.text,
            ),
        ),
      );
    }

    Widget content() {
      return SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: CircleAvatar(
                radius: 64,
                backgroundImage: AssetImage('assets/image_profile.png'),
              ),
            ),
            Text(
              'Kina Mekoichi',
              style: primaryTextStyle,
            ),
            nameInput(),
            usernameInput(),
            emailInput(),
            buttonUpdate(),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor3,
      appBar: header(),
      body: content(),
    );
  }
}
