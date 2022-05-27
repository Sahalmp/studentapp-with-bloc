import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:studentapp/presentation/screens/list/homescreenwidget.dart';

import 'application/bloc/home_bloc.dart';
import 'domain/di/dependencyinjection.dart';
import 'domain/models/studentmodel.dart';

void main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjection();
  await Hive.initFlutter();
  if (!Hive.isAdapterRegistered(StudentModelAdapter().typeId)) {
    Hive.registerAdapter(StudentModelAdapter());
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (ctx) => getIt<HomeBloc>()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.teal),
        home: const HomescreenWidget(),
      ),
    );
  }
}
