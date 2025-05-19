import 'package:fit_me/features/collages/message/message.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../utils/app_colors.dart';
import '../../../widgets/tag_filter_bar.dart';
import '../effect/runtime.dart';

class TgFilterBar extends ConsumerWidget {
  const TgFilterBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return TagFilterBar<Message>(
      modelProvider: collagesModelProvider,
      runtimeBuilder: (ctx, ref) => Runtime(ctx, ref),
      backgroundColor: AppColors.background,
      shadowColor: AppColors.shadow,
      tagSelectedMessage: (tag, isSelected) => TagSelected(tag, isSelected),
      clearFiltersMessage: ClearTagFilters(),
    );
  }
}
