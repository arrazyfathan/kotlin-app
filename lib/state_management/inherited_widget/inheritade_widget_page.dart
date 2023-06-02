import 'package:flutter/material.dart';
import 'package:kotlin_app/state_management/inherited_widget/api.dart';

class InheritedWidgetExample extends StatefulWidget {
  const InheritedWidgetExample({Key? key}) : super(key: key);

  @override
  State<InheritedWidgetExample> createState() => _InheritedWidgetExampleState();
}

class _InheritedWidgetExampleState extends State<InheritedWidgetExample> {
  @override
  Widget build(BuildContext context) {
    ValueKey _textKey = const ValueKey<String?>(null);
    return Scaffold(
      appBar: AppBar(
        title: Text(ApiProvider.of(context).api.dateAndTime ?? ''),
      ),
      body: GestureDetector(
        onTap: () async {
          final api = ApiProvider.of(context).api;
          final dateAndTime = await api.getDateAndTime();
          setState(() {
            _textKey = ValueKey(dateAndTime);
          });
        },
        child: SizedBox.expand(
          child: Container(
            color: Colors.white,
            child: DateTimeWidget(
              key: _textKey,
            ),
          ),
        ),
      ),
    );
  }
}

class DateTimeWidget extends StatelessWidget {
  const DateTimeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final api = ApiProvider.of(context).api;
    return Text(api.dateAndTime ?? 'Tap on the screen to fetch date and time');
  }
}
