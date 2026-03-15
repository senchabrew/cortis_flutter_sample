import 'package:flutter/material.dart';

class AxisScaleSlider extends StatelessWidget {
  final String label;
  final double value;
  final Color? activeColor;
  final ValueChanged<double> onChanged;

  const AxisScaleSlider({
    super.key,
    required this.label,
    required this.value,
    this.activeColor,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final color = activeColor ?? theme.colorScheme.primary;

    return Row(
      children: [
        SizedBox(
          width: 28,
          child: Text(
            label,
            style: theme.textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.bold,
              color: color,
            ),
          ),
        ),
        Expanded(
          child: SliderTheme(
            data: SliderThemeData(activeTrackColor: color, thumbColor: color),
            child: Slider(
              value: value,
              min: 0.5,
              max: 3.0,
              divisions: 25,
              label: value.toStringAsFixed(1),
              onChanged: onChanged,
            ),
          ),
        ),
        SizedBox(
          width: 36,
          child: Text(
            value.toStringAsFixed(1),
            style: theme.textTheme.bodyMedium?.copyWith(
              fontWeight: FontWeight.w600,
              color: theme.colorScheme.onSurfaceVariant,
            ),
            textAlign: TextAlign.end,
          ),
        ),
      ],
    );
  }
}
