import 'dart:math';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:twitter/widgets/main_drawer.dart';
import 'package:twitter/widgets/tweet_box.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.5,
        backgroundColor: Colors.white,
        leadingWidth: 50,
        leading: Padding(
          padding: const EdgeInsets.only(left: 18),
          child: InkWell(
            onTap: () => scaffoldKey.currentState?.openDrawer(),
            child: Stack(
              children: const [
                CircleAvatar(
                  backgroundImage:
                      CachedNetworkImageProvider('https://picsum.photos/100'),
                ),
                Positioned(
                  top: 3,
                  right: 0,
                  child: CircleAvatar(
                    radius: 5,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: 4,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        title: SvgPicture.asset('asset/icons/logo.svg'),
        centerTitle: true,
        actions: [
          SvgPicture.asset('asset/icons/star.svg'),
          const SizedBox(
            width: 18,
          ),
        ],
      ),
      drawer: const MainDrawer(),
      body: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return TweetBox(
              index: index,
              liked:
                  Random().nextInt(3) % 3 == 1 ? Faker().person.name() : null,
              retweeted:
                  Random().nextInt(3) % 3 == 1 ? Faker().person.name() : null,
              isCert: Random().nextInt(5) % 5 == 1 ? true : null,
            );
          }),
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: false,
        showSelectedLabels: false,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        items: [
          BottomNavigationBarItem(
              icon: SvgPicture.asset('asset/icons/home.svg'), label: ''),
          BottomNavigationBarItem(
              icon: SvgPicture.asset('asset/icons/search.svg'), label: ''),
          BottomNavigationBarItem(
              icon: SvgPicture.asset('asset/icons/bell.svg'), label: ''),
          BottomNavigationBarItem(
              icon: SvgPicture.asset('asset/icons/mail.svg'), label: ''),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Theme.of(context).primaryColor,
        child: SvgPicture.asset('asset/icons/add.svg'),
      ),
    );
  }
}
