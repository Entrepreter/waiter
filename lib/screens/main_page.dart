import 'package:dakiya/controllers/requests_controller.dart';
import 'package:dakiya/injector.dart';
import 'package:dakiya/screens/response_body.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final TextEditingController _urlController = TextEditingController();

  var response;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                children: [
                  const Text("GET"),
                  const SizedBox(
                    width: 16,
                  ),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.only(left: 16),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: Colors.white,
                      ),
                      child: TextField(
                        controller: _urlController,
                        style: const TextStyle(color: Colors.black87),
                        onSubmitted: sendRequest,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "https://www.example.com/getsomething",
                          hintStyle: TextStyle(color: Colors.grey.shade400),
                          isDense: true,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  TextButton(
                    onPressed: () => sendRequest(_urlController.text.trim()),
                    child: const Text("SEND"),
                    style: TextButton.styleFrom(
                        backgroundColor: Theme.of(context).primaryColor),
                  )
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              Expanded(
                  child: ResponseBody(
                body: response,
              ))
            ],
          ),
        ),
      ),
    );
  }

  sendRequest(String url) async {
    response = null;
    setState(() {});
    response = await getIt.get<RequestController>().makeRequest(url);
    setState(() {});
  }
}
