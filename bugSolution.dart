```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      // Process jsonData successfully
    } else {
      // Handle specific HTTP error codes if needed
      throw HttpException('HTTP error: ${response.statusCode}', uri: Uri.parse('https://api.example.com/data'));
    }
  } on SocketException catch (e) {
    // Handle SocketExceptions specifically
    print('SocketException: $e');
  } on HttpException catch (e) {
    // Handle HttpExceptions specifically
    print('HttpException: $e');
  } catch (e) {
    // Handle any other exception
    print('Generic Error: $e');
    // Consider rethrowing for higher-level error handling or logging
  }
}
```