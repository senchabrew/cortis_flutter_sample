import 'package:flutter/material.dart';
import 'package:cortis_flutter_sample/infrastructure/unity_messenger.dart';
import 'package:cortis_flutter_sample/page/scale_control_page/scale_control_view.dart';
import 'package:cortis_flutter_sample/page/scale_control_page/scale_control_view_model.dart';
import 'package:cortis_flutter_sample/page/effect_page/effect_view.dart';
import 'package:cortis_flutter_sample/page/effect_page/effect_view_model.dart';
import 'package:cortis_flutter_sample/page/timer_page/timer_view.dart';
import 'package:cortis_flutter_sample/page/timer_page/timer_view_model.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        Provider<UnityMessenger>(
          create: (_) => UnityMessenger(),
          dispose: (_, messenger) => messenger.dispose(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorSchemeSeed: const Color(0xFF6750A4),
        useMaterial3: true,
        brightness: Brightness.light,
      ),
      darkTheme: ThemeData(
        colorSchemeSeed: const Color(0xFF6750A4),
        useMaterial3: true,
        brightness: Brightness.dark,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final messenger = context.read<UnityMessenger>();

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.view_in_ar_rounded,
                  size: 80,
                  color: theme.colorScheme.primary,
                ),
                const SizedBox(height: 16),
                Text(
                  'Cortis',
                  style: theme.textTheme.headlineLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: theme.colorScheme.primary,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  'Flutter Sample',
                  style: theme.textTheme.titleMedium?.copyWith(
                    color: theme.colorScheme.onSurfaceVariant,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  'Unity protobuf communication demo',
                  style: theme.textTheme.bodyMedium?.copyWith(
                    color: theme.colorScheme.outline,
                  ),
                ),
                const SizedBox(height: 48),
                FilledButton.icon(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => ChangeNotifierProvider(
                          create: (_) => ScaleControlViewModel(
                            unityMessenger: messenger,
                          ),
                          child: const ScaleControlPage(),
                        ),
                      ),
                    );
                  },
                  icon: const Icon(Icons.play_arrow_rounded),
                  label: const Text('Scale Demo'),
                ),
                const SizedBox(height: 12),
                OutlinedButton.icon(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => ChangeNotifierProvider(
                          create: (_) => TimerViewModel(
                            unityMessenger: messenger,
                          ),
                          child: const TimerPage(),
                        ),
                      ),
                    );
                  },
                  icon: const Icon(Icons.timer_rounded),
                  label: const Text('Timer (Event-only)'),
                ),
                const SizedBox(height: 12),
                FilledButton.tonalIcon(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => ChangeNotifierProvider(
                          create: (_) => EffectViewModel(
                            unityMessenger: messenger,
                          ),
                          child: const EffectPage(),
                        ),
                      ),
                    );
                  },
                  icon: const Icon(Icons.auto_fix_high_rounded),
                  label: const Text('Effect (Command-only)'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
