import 'package:flutter/material.dart';
import 'package:cortis_flutter_sample/page/effect_page/effect_view_model.dart';
import 'package:provider/provider.dart';

class EffectPage extends StatelessWidget {
  const EffectPage({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<EffectViewModel>();
    final theme = Theme.of(context);

    final sounds = ['click', 'pop', 'swoosh', 'chime'];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Effect (Command-only)'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Play Sound',
                      style: theme.textTheme.titleMedium,
                    ),
                    const SizedBox(height: 12),
                    Wrap(
                      spacing: 8,
                      runSpacing: 8,
                      children: sounds.map((sound) {
                        return FilledButton.tonalIcon(
                          onPressed: () => viewModel.playSound(sound),
                          icon: const Icon(Icons.volume_up_rounded),
                          label: Text(sound),
                        );
                      }).toList(),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Vibrate',
                      style: theme.textTheme.titleMedium,
                    ),
                    const SizedBox(height: 12),
                    Row(
                      children: [
                        Expanded(
                          child: OutlinedButton.icon(
                            onPressed: () => viewModel.vibrate(duration: 0.1),
                            icon: const Icon(Icons.vibration),
                            label: const Text('Short'),
                          ),
                        ),
                        const SizedBox(width: 8),
                        Expanded(
                          child: OutlinedButton.icon(
                            onPressed: () => viewModel.vibrate(duration: 0.5),
                            icon: const Icon(Icons.vibration),
                            label: const Text('Medium'),
                          ),
                        ),
                        const SizedBox(width: 8),
                        Expanded(
                          child: OutlinedButton.icon(
                            onPressed: () => viewModel.vibrate(duration: 1.0),
                            icon: const Icon(Icons.vibration),
                            label: const Text('Long'),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 24),
            Card(
              color: theme.colorScheme.surfaceContainerHighest,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Text(
                  'Command-only: Flutter sends commands to Unity.\n'
                  'No events are received back.',
                  style: theme.textTheme.bodyMedium?.copyWith(
                    color: theme.colorScheme.onSurfaceVariant,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
