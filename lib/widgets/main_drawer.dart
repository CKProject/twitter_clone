import 'dart:math';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 20,
                      top: 16,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const CircleAvatar(
                          radius: 25,
                          backgroundImage: CachedNetworkImageProvider(
                              'https://picsum.photos/100'),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          Faker().person.name().substring(0, 10),
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Text(
                          '@${Faker().internet.userName().substring(0, 5)}',
                          style: const TextStyle(
                            color: Color(0xFF687684),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Row(
                          children: [
                            Text(
                              Random().nextInt(1000).toString(),
                              style: const TextStyle(
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(
                              width: 4,
                            ),
                            const Text(
                              'Following',
                              style: TextStyle(
                                color: Color(0xFF687684),
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Text(
                              Random().nextInt(1000).toString(),
                              style: const TextStyle(
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(
                              width: 4,
                            ),
                            const Text(
                              'Followers',
                              style: TextStyle(
                                color: Color(0xFF687684),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 2,
                            vertical: 18,
                          ),
                          child: Row(
                            children: [
                              SvgPicture.asset('asset/icons/profile.svg'),
                              const SizedBox(
                                width: 20,
                              ),
                              const Text(
                                'Profile',
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 2,
                            vertical: 18,
                          ),
                          child: Row(
                            children: [
                              SvgPicture.asset('asset/icons/lists.svg'),
                              const SizedBox(
                                width: 20,
                              ),
                              const Text(
                                'Lists',
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 2,
                            vertical: 18,
                          ),
                          child: Row(
                            children: [
                              SvgPicture.asset('asset/icons/topics.svg'),
                              const SizedBox(
                                width: 20,
                              ),
                              const Text(
                                'Topics',
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 2,
                            vertical: 18,
                          ),
                          child: Row(
                            children: [
                              SvgPicture.asset('asset/icons/bookmarks.svg'),
                              const SizedBox(
                                width: 20,
                              ),
                              const Text(
                                'Bookmarks',
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 2,
                            vertical: 18,
                          ),
                          child: Row(
                            children: [
                              SvgPicture.asset('asset/icons/moments.svg'),
                              const SizedBox(
                                width: 20,
                              ),
                              const Text(
                                'Moments',
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 13,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 0.35,
                    width: double.infinity,
                    color: const Color(0xFFBDC5CD),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 20,
                    ),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 2,
                              vertical: 18,
                            ),
                            child: Text(
                              'Settings and privacy',
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 2,
                              vertical: 18,
                            ),
                            child: Text(
                              'Help Center',
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 22,
                right: 22,
                bottom: 10,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgPicture.asset('asset/icons/idea.svg'),
                  SvgPicture.asset('asset/icons/qr.svg'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
