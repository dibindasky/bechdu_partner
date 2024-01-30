import 'package:bechdu_partner/application/presentation/utils/colors.dart';
import 'package:bechdu_partner/application/presentation/utils/constant.dart';
import 'package:flutter/material.dart';

class ScreenNotification extends StatelessWidget {
  const ScreenNotification({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Notifications', style: textHeadBoldBig2),
        ),
        body: ListView.separated(
          itemCount: 10,
          separatorBuilder: (context, index) => const Divider(),
          itemBuilder: (context, index) {
            final icon = index % 3 == 0
                ? Icons.check
                : index % 3 == 1
                    ? Icons.close
                    : Icons.restore;
            final color = index % 3 == 0 ? kGreen : kRed;
            return ListTile(
              minLeadingWidth: 40,
              isThreeLine: true,
              leading: Row(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.circle, size: 12, color: color),
                  kWidth10,
                  CircleAvatar(
                    backgroundColor: color.withOpacity(0.2),
                    child: Icon(icon, color: color),
                  )
                ],
              ),
              title: Text(
                'Aman Sharma has pickedup Iphone',
                style: textHeadBold1,
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Iphone 11 pickup has been completed successfully',
                    style: textHeadRegular1,
                  ),
                  kHeight5,
                  Text(
                    '05:45 pm',
                    style: textHeadRegular1,
                  ),
                ],
              ),
              trailing: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    child: Icon(Icons.arrow_forward_ios_outlined, color: kBlue),
                  ),
                ],
              ),
            );
          },
        ));
  }
}
