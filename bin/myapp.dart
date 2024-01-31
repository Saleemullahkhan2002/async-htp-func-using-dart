// // import http package
// import 'package:http/http.dart' as http;

// void main() async {
//   var url = Uri.parse('https://jsonplaceholder.typicode.com/posts');
//   // make http post request
//   var response = await http.post(url, body: {'title': 'foo', 'body': 'bar', 'userId': '1'});
//   // check the status code for the result  
//   if (response.statusCode == 201) {
//     print(response.body);
//   } else {
//     print('Request failed with status: ${response.statusCode}.');
//   }  

// }



// import http package
// import 'package:http/http.dart' as http;

//getapi

// void main() async {
//   var url = Uri.parse('https://jsonplaceholder.typicode.com/posts/1');
//   // make http get request
//   var response = await http.get(url);
//   // check the status code for the result  
//   if (response.statusCode == 200) {
//     print(response.body);
//   } else {
//     print('Request failed with status: ${response.statusCode}.');
//   }  

// }


import 'dart:convert';
import 'package:http/http.dart' as http;


Future<void> fetchPost() async {
  try {
    // Convert the string URL to a Uri object using Uri.parse
    var response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts/1'));

    // Check if the request was successful (status code 200)
    if (response.statusCode == 200) {
      var post = json.decode(response.body);
      print("Post Title: ${post['title']}");
    } else {
      print("Failed to fetch post. Status code: ${response.statusCode}");
    }
  } catch (e) {
    print("Error fetching post: $e");
  }
}

void main() {
  print("Start");
  fetchPost();
  print("End");
}
