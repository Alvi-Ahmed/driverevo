import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:driverevo/notification.dart';
import 'package:driverevo/user_inputdata.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:driverevo/domain/auth/i_auth_provider.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'application/auth/auth_bloc.dart';
import 'infurstracture/auth/firebase_auth_provider.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'login.dart';
import 'presentation/auth/login.dart';
import 'package:driverevo/chart.dart';

Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp();
  print('Handling a background message ${message.messageId}');
  print(message.data);
  flutterLocalNotificationsPlugin.show(
      message.data.hashCode,
      message.data['title'].toString(),
      message.data['body'].toString(),
      NotificationDetails(
        android: AndroidNotificationDetails(
          channel.id,
          channel.name,
          //channel.description,
        ),
      ));
}

const AndroidNotificationChannel channel = AndroidNotificationChannel(
  'high_importance_channel', // id
  'High Importance Notifications', // title
  // 'This channel is used for important notifications.', // description
  importance: Importance.high,
);
final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
    FlutterLocalNotificationsPlugin();

void main() async {
  //Bloc.observer = AppBlocObserver();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
  await flutterLocalNotificationsPlugin
      .resolvePlatformSpecificImplementation<
          AndroidFlutterLocalNotificationsPlugin>()
      ?.createNotificationChannel(channel);
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
  final DatabaseReference _database = FirebaseDatabase().reference();
  FirebaseMessaging _fcm = FirebaseMessaging.instance;
  String message = "";
  String token = "";

  @override
  void initState() {
    super.initState();
    var initialzationSettingsAndroid =
        AndroidInitializationSettings('@mipmap/ic_launcher');
    var initializationSettings =
        InitializationSettings(android: initialzationSettingsAndroid);

    flutterLocalNotificationsPlugin.initialize(initializationSettings);
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      RemoteNotification? notification = message.notification;
      AndroidNotification? android = message.notification?.android;
      if (notification != null && android != null) {
        flutterLocalNotificationsPlugin.show(
            notification.hashCode,
            notification.title,
            notification.body,
            NotificationDetails(
              android: AndroidNotificationDetails(
                channel.id,
                channel.name,
                //channel.description,
                icon: android?.smallIcon,
              ),
            ));
      }
    });
    getToken();
  }

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

  getToken() async {
    token = (await FirebaseMessaging.instance.getToken())!;
    setState(() {
      token = token;
    });
    final DatabaseReference _database = FirebaseDatabase().reference();
    _database.child('fcm-token/${token}').set({"token": token});
  }
}
