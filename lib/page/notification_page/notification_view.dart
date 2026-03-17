import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:cortis_flutter_sample/page/notification_page/notification_view_model.dart';

class NotificationPage extends ConsumerWidget {
  final NotificationContext context;

  const NotificationPage({super.key, required this.context});

  @override
  Widget build(BuildContext buildContext, WidgetRef ref) {
    final notifications =
        ref.watch(notificationViewModelProvider(context));
    final viewModel =
        ref.read(notificationViewModelProvider(context).notifier);
    final theme = Theme.of(buildContext);

    final contextLabel = switch (context) {
      NotificationContext.game => 'Game',
      NotificationContext.admin => 'Admin',
    };

    return Scaffold(
      appBar:
          AppBar(title: Text('Notifications ($contextLabel)')),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Text(
              'Same ViewModel, different routing context',
              style: theme.textTheme.bodySmall?.copyWith(
                color: theme.colorScheme.outline,
              ),
            ),
          ),
          Expanded(
            child: notifications.isEmpty
                ? Center(
                    child: Text(
                      'No notifications',
                      style: theme.textTheme.bodyLarge?.copyWith(
                        color: theme.colorScheme.outline,
                      ),
                    ),
                  )
                : ListView.builder(
                    itemCount: notifications.length,
                    itemBuilder: (buildContext, index) {
                      final n = notifications[index];
                      return ListTile(
                        leading: const Icon(Icons.notifications_rounded),
                        title: Text(n.title),
                        subtitle: Text(n.id),
                        trailing: IconButton(
                          icon: const Icon(Icons.close),
                          onPressed: () => viewModel.dismiss(n.id),
                        ),
                      );
                    },
                  ),
          ),
        ],
      ),
    );
  }
}
