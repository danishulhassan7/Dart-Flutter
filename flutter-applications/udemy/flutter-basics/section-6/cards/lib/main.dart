import 'package:flutter/material.dart';

void main() => runApp(Setup());

class Setup extends StatelessWidget {
  const Setup({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Layout in Google Flutter",
      theme: ThemeData(
        primarySwatch: Colors.lightBlue
      ),
      home: MyApp(),
    );
  }
}

class MyApp extends StatefulWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cards in Google Flutter"),
      ),
      body: Container(
        padding: EdgeInsets.all(32.0),
        child: Center(
          child: Column(
            children: <Widget>[
              Text("Cards in Google Flutter",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Card(
              child: Container(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  children: <Widget>[
                   Image.network("data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAATYAAACjCAMAAAA3vsLfAAAAhFBMVEUAAABUxfgptvYBV5tWyf1Al70ARHkBWJ5UxPYeR1hVyPtKwfcbQVEAHjYpuPgfSlwOQlhJq9YbeqMqvf8iod4AHDIBUZEiUGQcQ1M2gJ8ZPEsAOWcNHiUECQxMsuAKGB0mWW8JLDkASoUAPnABT40ALFUAIUMBSYIindYALVIAID0ADhmXSbb6AAACZ0lEQVR4nO3a226bQBCAYWMoAYqBJhSTuEfHiZv2/d+vtWhsDjsD2TbalfJ/t87F6Nfsgq2sVgAAAAAAAAAAAADwOtp3gk+uJ/NZnkRmW9eT+SwPssCodD2Zz3JzsyCjmuJOqBakrifzmViNXVNIJ5Rd01DNRks1C21CtZdLeV+zkCZCNXZNQTUbVLNBNRtUs5Hy5mGBt1wbQrWMappcuNaophGqsWuqVqrWup7MZynVLKTC0yChmkKsxr2mkKrxNNCU5moBJ1QjVONeU0m7FuSuJ/OZuGtUU5TSbx5UU7BrNrjXbAjfqKimSiNO6MtJ396ppvmnXfv86uN5qlxS7Vb4390vX53N7Va55ITemtNGH5yN7dh2UTXzH73daqtvxiLs2pytfbU3+zg4mXaj2hLj6y1L7nqfUk0yfJhmwaJqzqb1R7/bwl1zNqtPLt2G1a7fU03z3G14Qq9v1qZuVDvruo127Wa9NnSjWs+pm6HatBvVBsooMlUbd6PaSGmuNuxGNVWvWr8b1VSDapduVFONqj13o5pqUq3rRjWVodqpG9VUxmp/ulFN870wVivqj64n81tlrrZvNq4n81s13beiPjZhSDfVpFtXjW4zRt2KOj6EId1mDboV9f2h6bKFPBdUvW5FvTues9FNd+5W1A/x/tDQbZm/3Yofj7v42MtGN13VVfv5tLs/XqLRbU7VVXuKB9HoNqc6ndB9eBWO8R6iquJm2oxuszbGaHSbQzc7dLNDNzt0s0M3O3SzswmvzOim2sSCX64nAwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA+P9+AwDUJV+3qnwLAAAAAElFTkSuQmCC"),
                    ListTile(
                      title: Text("Danish Ul Hassan"),
                      subtitle: Text("Data Enthusiast"),
                      leading: Icon(Icons.verified_rounded),
                      trailing: Icon(Icons.security_rounded),
                    ),
                  ],
                ),
              ),
            ),
            ],
          ),
        ),
      ),
    );
  }
}