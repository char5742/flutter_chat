import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class OutlinedIconButton extends HookConsumerWidget {
  final IconData icon;
  final Function() onPressed;
  const OutlinedIconButton({
    Key? key,
    required this.icon,
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
              color: Theme.of(context)
                  .iconTheme
                  .color
                  ?.withAlpha(hover.value ? 160 : 255)),
        ),
      ),
    );
  }
}
