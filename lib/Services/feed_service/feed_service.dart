import 'package:get/get.dart';
import 'package:rrr/models/feed_model.dart';
import 'package:http/http.dart' as http;

class FeedService extends GetxController {
  var feedList = <FeedModel>[].obs;
  var isLoading = true.obs;
  final _client = http.Client();
  @override
  void onInit() {
    super.onInit();
    fetchFeeds();
  }

  Future<void> fetchFeeds() async {
    isLoading(true);
    try {
      final response = await _client.get(
        Uri.parse('http://10.0.2.2:8000/feed/all'),
      );
      if (response.statusCode == 200 || response.statusCode == 201) {
        print('Successful Response');
      } else {
        throw Exception('Failed to load feeds');
      }
    } catch (e) {
      Get.snackbar('Error', e.toString());
    } finally {
      isLoading(false);
    }
  }
}
