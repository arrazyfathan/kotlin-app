import 'package:flutter/material.dart';
import 'package:kotlin_app/state_management/basic_state_management/state_management_page.dart';
import 'package:kotlin_app/state_management/bloc/bloc_cubit.dart';
import 'package:kotlin_app/state_management/inherited_model/inherited_model.dart';
import 'package:kotlin_app/state_management/inherited_widget/api.dart';
import 'package:kotlin_app/state_management/inherited_widget/inheritade_widget_page.dart';

import '../state_management/bloc/bloc_example.dart';

class StateManagementMainPage extends StatelessWidget {
  const StateManagementMainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (BuildContext context) {
                    return StateManagementPage();
                  }));
                },
                child: Text('Value Notifier'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (BuildContext context) {
                    return ApiProvider(
                      api: Api(),
                      child: InheritedWidgetExample(),
                    );
                  }));
                },
                child: Text('Inherited Widget'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (BuildContext context) {
                    return ApiProvider(
                      api: Api(),
                      child: InheritedModelExample(),
                    );
                  }));
                },
                child: Text('Inherited Model'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (BuildContext context) {
                    return ApiProvider(
                      api: Api(),
                      child: BlocCubitPage(),
                    );
                  }));
                },
                child: Text('Bloc/Cubit'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (BuildContext context) {
                    return ApiProvider(
                      api: Api(),
                      child: BlocExampleOne(),
                    );
                  }));
                },
                child: Text('Bloc/Bloc'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
