import '../shared/sigma_colors.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final double coverHeight = 220.0;
  final double profileHeight = 100.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          buildTop(),
          buildContent(),
        ],
      ),
    );
  }

  Widget buildTop() {
    final bottom = profileHeight / 2;
    final top = coverHeight - profileHeight / 2;

    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(
            bottom: bottom,
          ),
          child: builCoverImage(),
        ),
        Positioned(
          top: top,
          child: buildProfileImage(),
        ),
      ],
    );
  }

  Widget builCoverImage() => Container(
        color: SigmaColors.grey,
        child: Image.asset(
          'assets/images/crypto.png',
          width: double.infinity,
          height: coverHeight,
          fit: BoxFit.cover,
        ),
      );

  Widget buildProfileImage() => CircleAvatar(
        radius: profileHeight / 2,
        backgroundColor: SigmaColors.grey,
        backgroundImage: const NetworkImage(
            'https://365psd.com/images/istock/previews/9293/92933015-male-user-icon-with-long-shadow-on-white-background.jpg'),
      );

  Widget buildContent() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text('Meu Perfil', style: TextStyle(fontSize: 27.0)),
          SizedBox(height: 20.0),
          Text('Miguel Chiarello Fernandes', style: TextStyle(fontSize: 17.0)),
        ],
      ),
    );
  }
}
