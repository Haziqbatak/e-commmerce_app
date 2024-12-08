part of '../pages.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  Widget emailInput() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
          margin: const EdgeInsets.only(top: 70),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Email Address', style: primaryTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: regular
              ),),
              const SizedBox(height: 12,),
              Container(
                height: 50,
                decoration: BoxDecoration(
                    color: backgroundColor4,
                    borderRadius: BorderRadius.circular(12)
                ),
                child: Center(
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset('assets/icon_email.png', width: 20,),
                      ),
                      const SizedBox(width: 16,),
                      Expanded(child: TextFormField(
                        style: primaryTextStyle,
                        decoration: InputDecoration.collapsed(hintText: 'Your Email', hintStyle: primaryTextStyle),
                      ))
                    ],
                  ),
                ),
              )
            ],
          )
      ),
    );
  }
  Widget nameInput() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
          margin: const EdgeInsets.only(top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Name', style: primaryTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: regular
              ),),
              const SizedBox(height: 12,),
              Container(
                height: 50,
                decoration: BoxDecoration(
                    color: backgroundColor4,
                    borderRadius: BorderRadius.circular(12)
                ),
                child: Center(
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset('assets/icon_name.png', width: 20,),
                      ),
                      const SizedBox(width: 16,),
                      Expanded(child: TextFormField(
                        style: primaryTextStyle,
                        decoration: InputDecoration.collapsed(hintText: 'Your Name', hintStyle: primaryTextStyle),
                      ))
                    ],
                  ),
                ),
              )
            ],
          )
      ),
    );
  }
  Widget usernameInput() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
          margin: const EdgeInsets.only(top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Username', style: primaryTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: regular
              ),),
              const SizedBox(height: 12,),
              Container(
                height: 50,
                decoration: BoxDecoration(
                    color: backgroundColor4,
                    borderRadius: BorderRadius.circular(12)
                ),
                child: Center(
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset('assets/icon_username.png', width: 20,),
                      ),
                      const SizedBox(width: 16,),
                      Expanded(child: TextFormField(
                        style: primaryTextStyle,
                        decoration: InputDecoration.collapsed(hintText: 'Your Username', hintStyle: primaryTextStyle),
                      ))
                    ],
                  ),
                ),
              )
            ],
          )
      ),
    );
  }
  Widget passwordInput() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
          margin: const EdgeInsets.only(top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Your Password', style: primaryTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: regular
              ),),
              const SizedBox(height: 12,),
              Container(
                height: 50,
                decoration: BoxDecoration(
                    color: backgroundColor4,
                    borderRadius: BorderRadius.circular(12)
                ),
                child: Center(
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset('assets/icon_password.png', width: 20,),
                      ),
                      const SizedBox(width: 16,),
                      Expanded(child: TextFormField(
                        obscureText: true,
                        style: primaryTextStyle,
                        decoration: InputDecoration.collapsed(hintText: 'Your Password', hintStyle: primaryTextStyle),
                      ))
                    ],
                  ),
                ),
              )
            ],
          )
      ),
    );
  }
  Widget buttonSubmit(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
          width: double.infinity,
          margin: const EdgeInsets.only(top: 30),
          height: 50,
          decoration: BoxDecoration(
              color: primaryColor,
              borderRadius: BorderRadius.circular(12)
          ),
          child: TextButton(onPressed: (){
            Navigator.pushReplacementNamed(context, '/main');
          },
            child: Text('Sign Up', style: primaryTextStyle.copyWith(fontWeight: semiBold, fontSize: 20),),)
      ),
    );
  }
  Widget header() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Container(
        width: double.infinity,
        margin: const EdgeInsets.only(top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Login Page',
              style:
              primaryTextStyle.copyWith(fontWeight: semiBold, fontSize: 32),
            ),
            const SizedBox(
              height: 12,
            ),
            Text(
              'Sign In to continue',
              style:
              subtitleTextStyle.copyWith(fontSize: 16, fontWeight: regular),
            )
          ],
        ),
      ),
    );
  }
  Widget footer(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Already have an account?  ', style: subtitleTextStyle,),
            GestureDetector(
              onTap: (){
                Navigator.pushNamed(context, '/sign-in');
              },
              child: Text('Sign in',
                style: primaryTextStyle,
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor3,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            header(),
            emailInput(),
            nameInput(),
            usernameInput(),
            passwordInput(),
            buttonSubmit(context),
            const Spacer(),
            footer(context),
          ],
        ),
      ),
    );
  }
}
