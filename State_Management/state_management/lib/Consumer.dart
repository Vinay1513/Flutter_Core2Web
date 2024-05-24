import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MatchSummary extends StatefulWidget {
  const MatchSummary({super.key});

  @override
  State<MatchSummary> createState() => _MatchSummaryState();
}

class _MatchSummaryState extends State<MatchSummary> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Consumer Demo'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Text(Provider.of<Player>(context).playerName),
          const SizedBox(height: 50),
          Text("${Provider.of<Player>(context).jerNo}"),
          const SizedBox(height: 50),
          Consumer(
            builder: (context, provider, child) {
              print("IN consumer");
              return Column(
                children: [
                  Text("${Provider.of<Match>(context).matchNo}"),
                  const SizedBox(height: 50),
                  Text("${Provider.of<Match>(context).runs}"),
                ],
              );
            },
          ),
          const SizedBox(
            height: 50,
          ),
          ElevatedButton(
              onPressed: () {
                Provider.of<Match>(context, listen: false)
                    .changeData(250, 8900);
              },
              child: const Text("Change Text")),
          const SizedBox(
            height: 20,
          ),
          const NormalClass(),
        ],
      ),
    );
  }
}

class NormalClass extends StatelessWidget {
  const NormalClass({super.key});

  @override
  Widget build(BuildContext context) {
    print("In normal class build");
    return Consumer(builder: ((context, value, child) {
      print("in normal class consumer");
      return Text("${Provider.of<Match>(context).matchNo}");
    }));
  }
}

class Player {
  String playerName;
  int jerNo;
  Player({required this.playerName, required this.jerNo});
}

class Match with ChangeNotifier {
  int matchNo;
  int runs;
  Match({required this.matchNo, required this.runs});

  void changeData(int matchNo, int runs) {
    this.matchNo = matchNo;
    this.runs = runs;
    notifyListeners();
  }
}
