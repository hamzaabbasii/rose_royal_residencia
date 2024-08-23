import 'package:http/http.dart' as http;
import 'package:rrr/utils/constants/constants.dart';
import 'package:rrr/utils/exceptions.dart';

const register = '/user/signup';
const login = 'http';

class AuthService {
  final http.Client client = http.Client();

  //Sign Up Service
  Future<void> signUp({
    required String countryName,
    required String cityName,
    required String phoneNumber,
    required int cnicNumber,
    required String emailAddress,
    required String password,
  }) async {
    try {
      final response =
          await client.post(Uri.parse('$kBaseUrl$register'), body: {
        "countryName": countryName,
        "cityName": cityName,
        "phoneNumber": phoneNumber,
        "cnicNumber": cnicNumber,
        "emailAddress": emailAddress,
        "password": password,
      });
      if (response.statusCode == 200 || response.statusCode == 201) {
        print('Successful Response');
      } else {
        throw APIExceptions(
            message: "Message Body: ${response.body}",
            statusCode: response.statusCode);
      }
    } on APIExceptions {
      rethrow;
    } catch (e) {
      throw APIExceptions(
        message: e.toString(),
        statusCode: 505,
      );
    }
  }

  //Verify Cnic Service
  Future<void> verifyCnic({
    required int cnicNumber,
  }) async {
    try {
      final response = await client.post(Uri.parse('$kBaseUrl$login'), body: {
        "cnicNumber": cnicNumber,
      });
      if (response.statusCode == 200 || response.statusCode == 201) {
        print('Successful Response');
      } else {
        throw APIExceptions(
            message: "Message Body: ${response.body}",
            statusCode: response.statusCode);
      }
    } catch (e) {
      throw APIExceptions(
        message: e.toString(),
        statusCode: 505,
      );
    }
  }

  //login Service
  Future<void> login({
    required int cnicNumber,
    required String password,
  }) async {
    try {
      final response = await client.post(Uri.parse('$kBaseUrl$login'), body: {
        "cnicNumber": cnicNumber,
        "password": password,
      });
      if (response.statusCode == 200 || response.statusCode == 201) {
        print('Successful Response');
      } else {
        throw APIExceptions(
            message: "Message Body: ${response.body}",
            statusCode: response.statusCode);
      }
    } catch (e) {
      throw APIExceptions(
        message: e.toString(),
        statusCode: 505,
      );
    }
  }
}
