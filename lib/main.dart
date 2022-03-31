import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home:  views(individu: this)
    );
  }
}

class views extends StatefulWidget {
  views({Key? key, required this.individu}) : super(key: key);

  dynamic individu;

  @override
  State<views> createState() => _viewsState();
}

class _viewsState extends State<views> {

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Vu"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    backgroundImage: const AssetImage("assets/capture.png"),
                    backgroundColor: Colors.blue,
                    radius: 40,
                    child: Text("${widget.individu.id}"),
                  ),
                  const SizedBox(height: 20,),
                  const Text("Profile", style: TextStyle(color: Colors.cyan, fontWeight: FontWeight.bold),),
                ],
              ),
            ),
            const SizedBox(height: 10,),
            const Divider(indent: 10, endIndent: 10, color: Colors.black, thickness: 0.1,),
            const SizedBox(height: 20,),

            Container(
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                      children: [
                        const SizedBox(
                          child: Text("Id", style: TextStyle(fontWeight: FontWeight.w900),),
                          width: 90,
                        ),
                        const SizedBox(width: 10,),
                        Text("${widget.individu.id}", style: const TextStyle(fontWeight: FontWeight.w300),),
                      ]
                  ),
                  const Divider(indent: 100, endIndent: 10, color: Colors.black, thickness: 0.1,),
                  const SizedBox(height: 15,),

                  Row(
                      children: [
                        const SizedBox(
                          child: Text("userId", style: TextStyle(fontWeight: FontWeight.w900),),
                          width: 90,
                        ),
                        const SizedBox(width: 10,),
                        Text("${widget.individu.userId}", style: const TextStyle(fontWeight: FontWeight.w300),),
                      ]
                  ),
                  const Divider(indent: 100, endIndent: 10, color: Colors.black, thickness: 0.1,),
                  const SizedBox(height: 15,),

                  Row(
                      children: [
                        const SizedBox(
                          child: Text("title", style: TextStyle(fontWeight: FontWeight.w900),),
                          width: 90,
                        ),
                        const SizedBox(width: 10,),
                        SizedBox(
                            width: 0.65*screenWidth,
                            child: Text(widget.individu.title, style: const TextStyle(fontWeight: FontWeight.w300))
                        )
                      ]
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

