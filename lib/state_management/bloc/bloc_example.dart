import 'dart:convert';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

class BlocExampleOne extends StatefulWidget {
  const BlocExampleOne({Key? key}) : super(key: key);

  @override
  State<BlocExampleOne> createState() => _BlocExampleOneState();
}

class _BlocExampleOneState extends State<BlocExampleOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Bloc/bloc'),),
      body: Placeholder(),
    );
  }
}

@immutable
abstract class LoadAction {
  const LoadAction();
}

@immutable
class LoadPersonsAction implements LoadAction {
  final PersonUrl url;

  LoadPersonsAction({required this.url}) : super();
}

@immutable
class Person {
  final String name;
  final int age;

  const Person({required this.name, required this.age});

  Person.fromJson(Map<String, dynamic> json)
      : name = json['name'] as String,
        age = json['age'] as int;
}

Future<Iterable<Person>> getPersons(String url) =>
    HttpClient()
        .getUrl(Uri.parse(url))
        .then((request) => request.close())
        .then((response) => response.transform(utf8.decoder).join())
        .then((str) => json.decode(str) as List<dynamic>)
        .then((list) => list.map((e) => Person.fromJson(e)));

@immutable
class FetchResult {
  final Iterable<Person> persons;
  final bool isRetrieveFromCache;

  const FetchResult({required this.persons, required this.isRetrieveFromCache});

  @override
  String toString() =>
      'FetchResult (isRetrieveFromCache = $isRetrieveFromCache, persons = $persons)';
}

enum PersonUrl { persons1, persons2 }

class PersonBloc extends Bloc<LoadAction, FetchResult?> {
  final Map<PersonUrl, Iterable<Person>> _cache = {};

  PersonBloc() : super(null) {
    on <LoadPersonsAction>((event, emit) {
      final url = event.url;
      if(_cache.containsKey(url)) {

      }
    }
    );
  }
}

extension UrlString on PersonUrl {
  String get urlString {
    switch (this) {
      case PersonUrl.persons1:
        return 'http://127.0.0.1:5500/api/persons1.json';
      case PersonUrl.persons2:
        return 'http://127.0.0.1:5500/api/persons2.json';
    }
  }
}
