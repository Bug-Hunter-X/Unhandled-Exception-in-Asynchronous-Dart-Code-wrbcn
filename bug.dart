```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Process the JSON response
      final jsonData = json.decode(response.body);
      // Access data from jsonData
      print(jsonData['some_key']);
    } else {
      // Handle HTTP errors
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    // Handle other errors
    print('Error: $e');
    //Rethrow the error to be handled further up the call stack
    rethrow; 
  }
}
```