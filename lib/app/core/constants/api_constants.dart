class ApiConstants {
  ApiConstants._();

  static const String baseUrl = "https://dummyjson.com/";
  // static const String baseUrl = "https://reqres.in/api";

  static const int connectTimeoutSeconds = 20;

  // Auth endpoints
  // static const String login = "/login";
  static const String login = "/user/add";
  // static const String register = "/register";
  static const String register = "/user/register";
  static const String editUser = "/user/edit";
  // static const String editUser = "/edit";
  static const String refreshToken = "/refresh-token";

  // Example for future use
  static const String userProfile = "/users";
}
