```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Handle the successful response here
      final jsonData = jsonDecode(response.body);
      // Process jsonData
    } else {
      // Handle the error response
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    // Handle any exceptions during the API call
    print('Error: $e');
    rethrow; // Re-throw to be handled further up the call stack if needed
  }
}
```