import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class OutlinedIconButton extends HookConsumerWidget {
  final IconData icon;
  final Function() onPressed;
  final Color? color;
  const OutlinedIconButton({
    Key? key,
    required this.icon,
    this.color,
    required this.onPressed,
  }) : super(key: key);
  @override
  Widget build(context, ref) {
    final hover = useState(false);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: onPressed,
        child: MouseRegion(
          onEnter: (_) => hover.value = true,
          onExit: (_) => hover.value = false,
          child: Icon(icon,
              color: (color ?? Theme.of(context).iconTheme.color)
                  ?.withAlpha(hover.value ? 160 : 255)),
        ),
      ),
    );
  }
}

Future<void> showOutlinedDialog({
  required BuildContext context,
  required String text,
}) async {
  final theme = Theme.of(context);
  await showDialog(
      context: context,
      builder: (context) {
        return Center(
          child: Container(
            padding: const EdgeInsets.all(8),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
              border: Border.all(
                color: theme.primaryColorDark,
                width: 4,
              ),
            ),
            width: 300,
            height: 150,
            child: Text(
              text,
              style: theme.primaryTextTheme.headline6,
            ),
          ),
        );
      });
}
