import 'package:bloc_practice/bloc/package_bloc.dart';
import 'package:bloc_practice/domain/constant/score_value.dart';
import 'package:bloc_practice/repository/package_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'domain/colors/colors.dart';
import 'model/package.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BLoC Practice',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BlocProvider(
        create: (context) =>
            PackageBloc(packageRepository: PackageRepository()),
        child: const MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int pages = 1;

  @override
  void initState() {
    super.initState();

    BlocProvider.of<PackageBloc>(context).add(GetPackageEvent(pages: pages));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BLoC Practice'),
      ),
      body: BlocBuilder<PackageBloc, PackageState>(
        builder: (context, state) {
          if (state is Empty) {
            return Container();
          } else if (state is Loading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is Loaded) {
            final packages = state.packages;

            return ListView.separated(
              itemCount: packages.length,
              itemBuilder: (context, index) {
                final package = packages[index];
                return _ListTile(package: package);
              },
              separatorBuilder: (context, index) => const Divider(),
            );
          } else if (state is Error) {
            return Text(state.message);
          }

          return Container();
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          context.read<PackageBloc>().add(
                AppendPackageEvent(pages: ++pages),
              );
        },
      ),
    );
  }
}

class _ListTile extends StatelessWidget {
  final Package package;

  const _ListTile({required this.package});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            package.name,
            style: const TextStyle(
              fontSize: 18,
              color: ViewColors.primaryColor,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8.0),
          Text(
            package.description,
            style: const TextStyle(
              color: ViewColors.primaryTextColor,
            ),
          ),
          const SizedBox(height: 8.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Text(
                    package.likes.toString(),
                    style: const TextStyle(
                      color: ViewColors.primaryColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text(
                    ScoreValue.likes,
                    style: TextStyle(fontSize: 10),
                  ),
                ],
              ),
              const SizedBox(width: 16),
              Column(
                children: <Widget>[
                  Text(
                    package.pubPoints.toString(),
                    style: const TextStyle(
                      color: ViewColors.primaryColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text(
                    ScoreValue.pubPoints,
                    style: TextStyle(fontSize: 10),
                  ),
                ],
              ),
              const SizedBox(width: 16),
              Column(
                children: <Widget>[
                  Text(
                    package.popularity.toString() + '%',
                    style: const TextStyle(
                      color: ViewColors.primaryColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text(
                    ScoreValue.popularity,
                    style: TextStyle(fontSize: 10),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 16.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                package.version,
                style: const TextStyle(
                  color: ViewColors.primaryColor,
                  fontSize: 10,
                ),
              ),
              package.nullSafety
                  ? Container(
                      child: const Text(
                        "Null safety",
                        style: TextStyle(
                          color: ViewColors.primaryColor,
                          fontSize: 10,
                        ),
                      ),
                      margin: const EdgeInsets.only(left: 8),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 6),
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(20),
                        ),
                        border: Border.all(color: ViewColors.primaryColor),
                      ),
                    )
                  : Container(),
            ],
          ),
        ],
      ),
    );
  }
}
