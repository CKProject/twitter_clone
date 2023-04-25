import 'dart:math';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:faker/faker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hashtagable/widgets/hashtag_text.dart';

class TweetBox extends StatelessWidget {
  const TweetBox({
    Key? key,
    required this.index,
    this.liked,
    this.retweeted,
    this.isCert,
  }) : super(key: key);

  final int index;
  final String? liked;
  final String? retweeted;
  final bool? isCert;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 18,
        vertical: 10,
      ),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Color(0x60BDC5CD),
          ),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.only(
                    right: 8,
                  ),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: liked != null
                        ? SvgPicture.asset('asset/icons/heart_fill.svg')
                        : retweeted != null
                            ? SvgPicture.asset('asset/icons/retweet_small.svg')
                            : Container(),
                  ),
                ),
              ),
              Expanded(
                flex: 5,
                child: liked != null
                    ? Text(
                        liked!,
                        style: const TextStyle(
                          color: Color(0xFF687684),
                          fontSize: 14,
                        ),
                      )
                    : retweeted != null
                        ? Text(
                            retweeted!,
                            style: const TextStyle(
                              color: Color(0xFF687684),
                              fontSize: 14,
                            ),
                          )
                        : Container(),
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.only(
                    right: 8,
                    top: 4,
                  ),
                  child: CircleAvatar(
                    radius: 25,
                    backgroundImage: CachedNetworkImageProvider(
                        'https://i.pravatar.cc/10$index'),
                  ),
                ),
              ),
              Expanded(
                flex: 5,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Row(
                            children: [
                              Text(
                                Faker().person.name().substring(0, 10),
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              isCert != null
                                  ? Padding(
                                      padding: const EdgeInsets.only(left: 2),
                                      child: SvgPicture.asset(
                                          'asset/icons/cert.svg'),
                                    )
                                  : Container(),
                              Text(
                                ' @${Faker().internet.userName().substring(0, 5)} ·${Random().nextInt(23) + 1}h',
                                style: const TextStyle(
                                  color: Color(0xFF687684),
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Icon(
                          CupertinoIcons.chevron_down,
                          color: Color(0xFFBDC5CD),
                          size: 14,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    HashTagText(
                      text:
                          "${Faker().lorem.sentences(Random().nextInt(5) + 1).join(' ')} ${Random().nextInt(3) % 3 == 1 ? "#${Faker().lorem.word()}" : ''}",
                      decoratedStyle:
                          const TextStyle(fontSize: 16, color: Colors.blue),
                      basicStyle:
                          const TextStyle(fontSize: 16, color: Colors.black),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Row(
                            children: [
                              SvgPicture.asset('asset/icons/comment.svg'),
                              const SizedBox(
                                width: 3,
                              ),
                              Text(
                                Random().nextInt(100).toString(),
                                style: const TextStyle(
                                  fontSize: 12,
                                  color: Color(0xFF687684),
                                ),
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          child: Row(
                            children: [
                              SvgPicture.asset('asset/icons/retweet.svg'),
                              const SizedBox(
                                width: 3,
                              ),
                              Text(
                                Random().nextInt(100).toString(),
                                style: const TextStyle(
                                  fontSize: 12,
                                  color: Color(0xFF687684),
                                ),
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          child: Row(
                            children: [
                              SvgPicture.asset('asset/icons/heart.svg'),
                              const SizedBox(
                                width: 3,
                              ),
                              Text(
                                Random().nextInt(100).toString(),
                                style: const TextStyle(
                                  fontSize: 12,
                                  color: Color(0xFF687684),
                                ),
                              )
                            ],
                          ),
                        ),
                        Expanded(
                            child: Align(
                                alignment: Alignment.centerLeft,
                                child:
                                    SvgPicture.asset('asset/icons/share.svg'))),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
