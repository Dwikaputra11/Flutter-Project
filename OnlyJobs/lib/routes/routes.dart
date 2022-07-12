import 'package:flutter/material.dart';
import 'package:tugas_flutter/screens/chat.dart';
import 'package:tugas_flutter/screens/collection.dart';
import 'package:tugas_flutter/screens/home.dart';
import 'package:tugas_flutter/screens/job_detail.dart';
import 'package:tugas_flutter/screens/login.dart';
import 'package:tugas_flutter/screens/profile.dart';
import 'package:tugas_flutter/screens/sign_up.dart';
import 'package:tugas_flutter/screens/user_created_confirm.dart';
import 'package:tugas_flutter/screens/user_priority_job.dart';
import 'package:tugas_flutter/screens/user_topic.dart';

import '../screens/user_profile_input.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/login':
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case '/home':
        return MaterialPageRoute(builder: (_) => const Home());
      case '/collection':
        return MaterialPageRoute(builder: (_) => Collection());
      case '/chat':
        return MaterialPageRoute(builder: (_) => const Chat());
      case '/profile':
        return MaterialPageRoute(builder: (_) => const Profile());
      case '/job-detail':
        return MaterialPageRoute(builder: (_) => const JobDetail());
      case '/sign-up':
        return MaterialPageRoute(builder: (_) => const SignUp());
      case '/user-profile-input':
        return MaterialPageRoute(builder: (_) => const UserProfileInput());
      case '/user-topic':
        return MaterialPageRoute(builder: (_) => const UserTopic());
      case '/user-priority-job':
        return MaterialPageRoute(builder: (_) => const UserPriorityJob());
      case '/user-created-confirm':
        return MaterialPageRoute(builder: (_) => const UserCreatedConfirm());
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Error'),
        ),
        body: const Center(
          child: Text('Error Page'),
        ),
      );
    });
  }
}
