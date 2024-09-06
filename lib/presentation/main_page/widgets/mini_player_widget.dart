import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

enum PlayerState {
  smallAudioPlayer,
  largeAudioPlayer,
}

class MiniPlayerWidget extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String artists;
  final int audioDuration;
  final Color color;
  MiniPlayerWidget({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.artists,
    required this.audioDuration,
    required this.color,
  });

  final apikeys = [
    '5b0960a4fbmshad8b40b8a94ff1ap148066jsn995fb73c702d',
    'e35758723fmsh3ef26a0dcf1ba74p1437a7jsn33e8a2f3b7e3',
    '00b11f2551mshd42787a1f1528c1p1be8d3jsn2713d4c82ec3',
    '3fa0e9dfedmsh6bcda51f7b5f7bep12eae5jsn76705791b5ec', //personal.ak04@gmail.com
  ];
  late String apikey;

  final mediaPlayer = AudioPlayer();
  final iconNotifier = ValueNotifier(IconButton(
    icon: const Icon(Icons.play_arrow_outlined),
    onPressed: () {},
  ));
  final streamNotifier = ValueNotifier(const Duration(microseconds: 0));
  final audioPlayerSize = ValueNotifier(PlayerState.smallAudioPlayer);

  @override
  Widget build(BuildContext context) {
    apikey = apikeys[0];
    return GestureDetector(
      onTap: () {
        if (audioPlayerSize.value == PlayerState.smallAudioPlayer) {
          audioPlayerSize.value = PlayerState.largeAudioPlayer;
        } else if (audioPlayerSize.value == PlayerState.largeAudioPlayer) {
          audioPlayerSize.value = PlayerState.smallAudioPlayer;
        }
        log('Touched');
      },
      child: ValueListenableBuilder(
        valueListenable: audioPlayerSize,
        builder: (context, value, child) => AnimatedCrossFade(
          firstCurve: Curves.easeIn,
          secondCurve: Curves.easeIn,
          firstChild: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 30),
            child: Container(
              height: 70,
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0, left: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  image: DecorationImage(
                                      image: NetworkImage(imageUrl))),
                              // child: Image.network(
                              //   fit: BoxFit.cover,
                              //   dummyImagePlayer,
                              //   height: 50,
                              //   width: 50,
                              // ),
                            ),
                            const SizedBox(width: 10),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  constraints:
                                      const BoxConstraints(maxWidth: 220),
                                  child: Text(
                                    title,
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 1,
                                    style: const TextStyle(
                                      color: Color.fromARGB(239, 255, 255, 255),
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                                Text(
                                  artists,
                                  overflow: TextOverflow.ellipsis,
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        ValueListenableBuilder(
                          valueListenable: iconNotifier,
                          builder: (context, value, child) =>
                              iconNotifier.value,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, right: 8),
                    child: ValueListenableBuilder(
                        valueListenable: streamNotifier,
                        builder: (context, value, child) =>
                            LinearProgressIndicator(
                              value: streamNotifier.value.inMilliseconds /
                                  audioDuration,
                            )
                        // Slider(
                        //   value: streamNotifier.value.inMilliseconds.toDouble(),
                        //   onChanged: (value) {
                        //     log(value.toString());
                        //     seek(value);
                        //   },
                        //   max: audioDuration.toDouble(),
                        //   allowedInteraction: SliderInteraction.tapAndSlide,
                        // ),
                        ),
                  ),
                ],
              ),
            ),
          ),
          secondChild: Container(
            height: double.maxFinite,
            width: double.infinity,
            color: Colors.blueGrey,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 60, right: 60, top: 100),
                  child: Image.network(
                    imageUrl,
                  ),
                ),
                const SizedBox(height: 40),
                Text(
                  title,
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 3,
                  style: const TextStyle(
                    color: Color.fromARGB(239, 255, 255, 255),
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  artists,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                ValueListenableBuilder(
                  valueListenable: iconNotifier,
                  builder: (context, value, child) => iconNotifier.value,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 8),
                  child: ValueListenableBuilder(
                    valueListenable: streamNotifier,
                    builder: (context, value, child) => Slider(
                      value: streamNotifier.value.inMilliseconds.toDouble(),
                      onChanged: (value) {
                        log(value.toString());
                        seek(value);
                      },
                      max: audioDuration.toDouble(),
                      allowedInteraction: SliderInteraction.tapAndSlide,
                    ),
                  ),
                ),
              ],
            ),
          ),
          crossFadeState: audioPlayerSize.value == PlayerState.smallAudioPlayer
              ? CrossFadeState.showFirst
              : CrossFadeState.showSecond,
          duration: const Duration(seconds: 1),
        ),
      ),
    );
  }

  seek(double position) async {
    log(position.toString());
  }

  setUp() async {
    log('1');
    const spotifyId = '55ikcenXPbQdzCnO1sOuYg';
    //'2ToFD7FzslabjCw4pUzs1E' ;
    final dio = Dio();
    try {
      final response = await dio.get(
        'https://spotify-downloader9.p.rapidapi.com/downloadSong?songId=$spotifyId',
        options: Options(headers: {
          'x-rapidapi-host': 'spotify-downloader9.p.rapidapi.com',
          'x-rapidapi-key': apikey,
        }),
      );
      log('2');
      if (response.statusCode == 200) {
        final audioUrl = response.data['data']['downloadLink'] as String;
        await mediaPlayer.setUrl(audioUrl);
      }
    } catch (e) {
      if (apikey == apikeys[0]) {
        apikey = apikeys[1];
      } else if (apikey == apikeys[1]) {
        apikey = apikeys[2];
      } else if (apikey == apikeys[2]) {
        apikey = apikeys[3];
      } else if (apikey == apikeys[3]) {
        log('You are Done');
      }
      setUp();
      log(e.toString());
    }
  }
}
