class ApiEndPoint {
  static const String baseUrl =
      'https://api.cricapi.com/v1/currentMatches?apikey=b6df0c37-a017-4289-8f96-ffb2cd4f4cbd&offset=0';

  static String getInfo() {
    return baseUrl;
  }
}
