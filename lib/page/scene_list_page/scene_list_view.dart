import 'package:flutter/material.dart';
import 'package:cortis_flutter_sample/page/scene_list_page/scene_list_view_model.dart';
import 'package:provider/provider.dart';

class SceneListPage extends StatelessWidget {
  const SceneListPage({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<SceneListViewModel>();
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Scene List'),
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(16),
        itemCount: viewModel.sceneList.length,
        separatorBuilder: (_, __) => const SizedBox(height: 8),
        itemBuilder: (context, index) {
          final item = viewModel.sceneList[index];
          final isAvailable = item == 'Cube' || item == 'Sphere';

          return Card(
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
              side: BorderSide(
                color: theme.colorScheme.outlineVariant,
              ),
            ),
            child: ListTile(
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
              leading: Icon(
                _iconForScene(item),
                color: isAvailable
                    ? theme.colorScheme.primary
                    : theme.colorScheme.outline,
              ),
              title: Text(
                item,
                style: TextStyle(
                  color: isAvailable ? null : theme.colorScheme.outline,
                ),
              ),
              trailing: isAvailable
                  ? Icon(
                      Icons.chevron_right,
                      color: theme.colorScheme.onSurfaceVariant,
                    )
                  : Chip(
                      label: Text(
                        'N/A',
                        style: theme.textTheme.labelSmall,
                      ),
                      visualDensity: VisualDensity.compact,
                    ),
              onTap: () {
                if (viewModel.tryLoadScene(index)) {
                  Navigator.pop(context);
                } else {
                  _showUnavailableDialog(context, item);
                }
              },
            ),
          );
        },
      ),
    );
  }

  IconData _iconForScene(String name) {
    return switch (name) {
      'Cube' => Icons.square_rounded,
      'Sphere' => Icons.circle_outlined,
      _ => Icons.help_outline_rounded,
    };
  }

  void _showUnavailableDialog(BuildContext context, String scene) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          icon: const Icon(Icons.info_outline_rounded),
          title: const Text('Unavailable'),
          content: Text(
            '"$scene" is not available in this sample.',
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }
}
