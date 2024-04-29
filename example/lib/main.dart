import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:voice_message_package/voice_message_package.dart';

void main() => runApp(const MyApp());

///
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) => Sizer(
        builder: (_, __, ___) => MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Scaffold(
            backgroundColor: Colors.grey.shade200,
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  VoiceMessageView(
                    controller: VoiceController(
                      audioSrc:
                          'https://app.seen.ninja/storage/media/410/1713680496999999.mp3',
                      maxDuration: const Duration(minutes: 10),
                      isFile: false,
                      onComplete: () {
                        /// do something on complete
                        print("onComplete");
                      },
                      onPause: () {
                        /// do something on pause
                         print("onPause");
                    
                
                      },
                      onPlaying: () {
                        /// do something on playing
                        print("playing");
                      },
                      onError: (err) {
                        /// do somethin on error
                        print(err );
                      },
                    ),
                    innerPadding: 12,
                    cornerRadius: 20,
                  ),
                ],
              ),
            ),
          ),
        ),
      );
}
