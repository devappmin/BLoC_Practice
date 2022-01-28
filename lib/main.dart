import 'package:bloc_practice/bloc/package_bloc.dart';
import 'package:bloc_practice/repository/package_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
  @override
  void initState() {
    super.initState();

    BlocProvider.of<PackageBloc>(context).add(GetPackageEvent(pages: 0));
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
                return ListTile(
                  title: Text(package.name),
                  subtitle: Text(package.description),
                );
              },
              separatorBuilder: (context, index) => const Divider(),
            );
          } else if (state is Error) {
            return Text(state.message);
          }

          return Container();
        },
      ),
    );
  }
}
