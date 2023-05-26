import 'package:flutter/material.dart';

class BlockSemanticWidget extends StatefulWidget {
  const BlockSemanticWidget({Key? key}) : super(key: key);

  @override
  State<BlockSemanticWidget> createState() => _BlockSemanticWidgetState();
}

class _BlockSemanticWidgetState extends State<BlockSemanticWidget> {
  bool isShow = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: SizedBox(
          width: 500,
          height: double.infinity,
          child: Column(
            children: [
              OutlinedButton(
                child: const Text('Click'),
                onPressed: () => setState(() {
                  isShow = true;
                }),
              ),
              if (isShow)
                BlockSemantics(
                  blocking: isShow,
                  child: Card(
                    color: Colors.orangeAccent,
                    child: SizedBox(
                      width: 200,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          const Text('This is a card'),
                          TextButton(
                            child: const Text('Close'),
                            onPressed: () => setState(
                              () {
                                isShow = false;
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
            ],
          ),
        ),
      ),
    );
  }
}
