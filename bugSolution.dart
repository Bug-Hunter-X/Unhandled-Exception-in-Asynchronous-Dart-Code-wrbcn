```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final jsonData = json.decode(response.body);
      print(jsonData['some_key']);
    } else {
      //Provide more specific error messages
      throw Exception('HTTP request failed with status: ${response.statusCode},  Response body: ${response.body}');
    }
  } on FormatException catch (e) {
    print('Error: Invalid JSON format: $e');
  } on SocketException catch (e) {
    print('Error: Network error: $e');
  } catch (e) {
    print('An unexpected error occurred: $e');
  }
}
```