import 'package:get/get.dart';
import 'package:video_player/video_player.dart';

class VideoController extends GetxController {
  late VideoPlayerController videoPlayerController;
  var isPlaying = false.obs;
  var isInitialized = false.obs;

  @override
  void onInit() {
    super.onInit();
    videoPlayerController = VideoPlayerController.networkUrl(
      Uri.parse(
          'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4'),
    )..initialize().then((_) {
        isInitialized.value = true;
        videoPlayerController.play();
        isPlaying.value = true;
      });
    videoPlayerController.addListener(() {
      isPlaying.value = videoPlayerController.value.isPlaying;
    });
  }

  void playPause() {
    if (videoPlayerController.value.isPlaying) {
      videoPlayerController.pause();
    } else {
      videoPlayerController.play();
    }
    isPlaying.value = videoPlayerController.value.isPlaying;
  }

  @override
  void onClose() {
    super.onClose();
    videoPlayerController.dispose();
    super.onClose();
  }
}
