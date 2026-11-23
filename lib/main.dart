import 'package:material_ui/material_ui.dart';

import 'screens/home_screen.dart';
import 'screens/login_screen.dart';
import 'theme.dart';

/// Preview switch (no navigation logic needed):
/// 1 = Login screen, 2 = Home screen. Change it, then hot restart.
const int previewScreen = 2;

void main() => runApp(const CliniqoApp());

class CliniqoApp extends StatelessWidget {
  const CliniqoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cliniqo',
      debugShowCheckedModeBanner: false,
      theme: appTheme,
      home: previewScreen == 1 ? const LoginScreen() : const HomeScreen(),
    );
  }
}
