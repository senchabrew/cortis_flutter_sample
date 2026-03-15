import 'package:flutter/material.dart';
import 'package:cortis_flutter_sample/component/axis_scale_slider.dart';
import 'package:flutter_unity_widget_2/flutter_unity_widget_2.dart';
import 'package:cortis_flutter_sample/infrastructure/unity_messenger.dart';
import 'package:cortis_flutter_sample/page/scale_control_page/scale_control_view_model.dart';
import 'package:cortis_flutter_sample/page/scene_list_page/scene_list_view.dart';
import 'package:cortis_flutter_sample/page/scene_list_page/scene_list_view_model.dart';
import 'package:provider/provider.dart';

class ScaleControlPage extends StatelessWidget {
  const ScaleControlPage({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<ScaleControlViewModel>();
    final theme = Theme.of(context);
    final messenger = context.read<UnityMessenger>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Scale Control'),
      ),
      body: Column(
        children: [
          Expanded(
            child: UnityWidget(
              onUnityMessage: messenger.onReceivedUnityMessage,
              onUnityCreated: viewModel.onUnityCreated,
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: theme.colorScheme.surface,
              borderRadius:
                  const BorderRadius.vertical(top: Radius.circular(20)),
              boxShadow: [
                BoxShadow(
                  color: theme.shadowColor.withValues(alpha: 0.1),
                  blurRadius: 10,
                  offset: const Offset(0, -2),
                ),
              ],
            ),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  AxisScaleSlider(
                    label: 'X',
                    value: viewModel.scale.x,
                    activeColor: Colors.red.shade400,
                    onChanged: viewModel.setX,
                  ),
                  AxisScaleSlider(
                    label: 'Y',
                    value: viewModel.scale.y,
                    activeColor: Colors.green.shade400,
                    onChanged: viewModel.setY,
                  ),
                  AxisScaleSlider(
                    label: 'Z',
                    value: viewModel.scale.z,
                    activeColor: Colors.blue.shade400,
                    onChanged: viewModel.setZ,
                  ),
                  const SizedBox(height: 12),
                  Row(
                    children: [
                      Expanded(
                        child: FilledButton.tonalIcon(
                          onPressed: () => viewModel.jump(),
                          icon: const Icon(Icons.arrow_upward_rounded),
                          label: const Text('Jump'),
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: FilledButton.icon(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => ChangeNotifierProvider(
                                  create: (_) => SceneListViewModel(
                                    unityMessenger: messenger,
                                  ),
                                  child: const SceneListPage(),
                                ),
                              ),
                            );
                          },
                          icon: const Icon(Icons.list_rounded),
                          label: const Text('Scenes'),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
