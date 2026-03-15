import 'package:flutter/material.dart';
import 'package:cortis_flutter_sample/page/timer_page/timer_view_model.dart';
import 'package:provider/provider.dart';

class TimerPage extends StatelessWidget {
  const TimerPage({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<TimerViewModel>();
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Timer (Event-only)'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            Card(
              child: Padding(
                padding: const EdgeInsets.all(32),
                child: Column(
                  children: [
                    Text(
                      'Elapsed Time',
                      style: theme.textTheme.titleMedium?.copyWith(
                        color: theme.colorScheme.onSurfaceVariant,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      viewModel.elapsed.toStringAsFixed(1),
                      style: theme.textTheme.displayLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: theme.colorScheme.primary,
                      ),
                    ),
                    Text(
                      'seconds',
                      style: theme.textTheme.bodyMedium?.copyWith(
                        color: theme.colorScheme.outline,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 24),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Milestones (every 5s)',
                style: theme.textTheme.titleSmall?.copyWith(
                  color: theme.colorScheme.onSurfaceVariant,
                ),
              ),
            ),
            const SizedBox(height: 8),
            Expanded(
              child: viewModel.milestones.isEmpty
                  ? Center(
                      child: Text(
                        'Waiting for milestones...',
                        style: theme.textTheme.bodyMedium?.copyWith(
                          color: theme.colorScheme.outline,
                        ),
                      ),
                    )
                  : ListView.builder(
                      itemCount: viewModel.milestones.length,
                      itemBuilder: (context, index) {
                        final milestone = viewModel.milestones[index];
                        return ListTile(
                          leading: Icon(
                            Icons.flag_rounded,
                            color: theme.colorScheme.tertiary,
                          ),
                          title: Text('$milestone seconds'),
                        );
                      },
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
