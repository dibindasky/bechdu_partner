import 'package:bechdu_partner/application/presentation/utils/colors.dart';
import 'package:bechdu_partner/application/presentation/utils/constant.dart';
import 'package:flutter/material.dart';

class ErrorRefreshIndicator extends StatelessWidget {
  const ErrorRefreshIndicator({
    super.key,
    this.shrinkWrap = false,
    required this.onRefresh,
    this.errorMessage = 'something went wrong pull to refresh',
  });

  final VoidCallback onRefresh;
  final String errorMessage;
  final bool shrinkWrap;

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {
        onRefresh();
        await Future.delayed(const Duration(milliseconds: 1500));
      },
      child: ListView(
        shrinkWrap: shrinkWrap,
        children: [
          kHeight50,
          const Icon(Icons.refresh, color: kGreyLight),
          Center(child: Text(errorMessage)),
          const SizedBox(width: double.infinity)
        ],
      ),
    );
  }
}
