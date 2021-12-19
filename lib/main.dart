import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:driverevo/domain/auth/i_auth_provider.dart';

import 'application/auth/auth_bloc.dart';
import 'infurstracture/auth/firebase_auth_provider.dart';
import 'login.dart';
import 'presentation/auth/login.dart';
import 'package:driverevo/chart.dart';

void main() {
  //Bloc.observer = AppBlocObserver();
  WidgetsFlutterBinding.ensureInitialized();
  AwesomeNotifications().initialize(null, [
    NotificationChannel(
        channelKey: 'Key1',
        channelName: 'request Channel',
        channelDescription: 'Requests',
        defaultColor: Color(0XFF9050DD),
        ledColor: Colors.white,
        playSound: true,
        enableLights: true,
        enableVibration: true)
  ]);
  runApp(MyApp());
}

const bgColor = Color(0xffDEDBE8);
const primaryColor = Color(0xff9E96AF);
const secondaryColor = Color(0xff8781C9);

class MyApp extends StatefulWidget {
  // Create the initialization Future outside of `build`:
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final Future<FirebaseApp> _initialization = Firebase.initializeApp();
    return FutureBuilder(
        future: _initialization,
        builder: (context, snapshot) {
          if (snapshot.hasError) {
          } else if (snapshot.connectionState == ConnectionState.done) {
            return MultiRepositoryProvider(
              providers: [
                RepositoryProvider<IAuthProvider>(
                  create: (context) =>
                      FirebaseAuthProvider(FirebaseAuth.instance),
                ),
              ],
              child: MultiBlocProvider(
                providers: [
                  BlocProvider<AuthBloc>(
                    create: (context) => AuthBloc(
                      context.read<IAuthProvider>(),
                      // context.read<IRequestProvider>()
                    )..add(const AuthEvent.authCheckRequested()),
                  ),
                  // BlocProvider<RequestBloc>(
                  //     create: (context) => RequestBloc(
                  //         context.read<IRequestProvider>(),
                  //         context.read<IAuthProvider>()))
                ],
                child: MaterialApp(
                    debugShowCheckedModeBanner: false,
                    title: 'Driver Analysis',
                    builder: EasyLoading.init(),
                    home: BlocListener<AuthBloc, AuthState>(
                      listenWhen: (c, p) =>
                          c.isAuthenticated != p.isAuthenticated,
                      listener: (context, state) {
                        if (state.isAuthenticated) {
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //       builder: (context) => Dashboard()),
                          // );
                        }
                      },
                      child: Scaffold(
                        body: LoginPage(),
                      ),
                    )),
              ),
            );
          }
          return const MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Driver Evo',
            home: Scaffold(
              body: Center(
                child: CircularProgressIndicator(
                    // value: controller.value,
                    ),
              ),
            ),
          );
        });
  }
}
