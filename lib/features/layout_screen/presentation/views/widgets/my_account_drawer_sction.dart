import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rehlatyuae/core/utils/app_colors.dart';

class MyAccount extends StatelessWidget {
  const MyAccount({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
            trailing: Text(
          'My Account',
          style: Theme.of(context).textTheme.bodyMedium,
        )),
        ListTile(
          leading: SvgPicture.asset('assets/images/credit.svg'),
          title: Text(
            'Credits',
            style: Theme.of(context).textTheme.titleSmall,
          ),
          trailing: Text(
            '0.0',
            style: Theme.of(context).textTheme.titleSmall,
          ),
          onTap: () {},
        ),
        const Divider(color: Colors.black),
        ListTile(
          leading: SvgPicture.asset('assets/images/Currency.svg'),
          title: Text(
            'Currency',
            style: Theme.of(context).textTheme.titleSmall,
          ),
          trailing: const Icon(Icons.arrow_forward_ios),
          onTap: () {},
        ),
        const Divider(color: Colors.black),
        ListTile(
          leading: SvgPicture.asset('assets/images/Language.svg'),
          title: Text(
            'Language',
            style: Theme.of(context).textTheme.titleSmall,
          ),
          trailing: const Icon(Icons.arrow_forward_ios),
          onTap: () {},
        ),
        const Divider(color: Colors.black),
        ListTile(
          leading: SvgPicture.asset('assets/images/Notifications.svg'),
          title: Text(
            'Notifications',
            style: Theme.of(context).textTheme.titleSmall,
          ),
          trailing: Switch(
            value: true,
            onChanged: (bool postion) {
              print("$postion");
            },
            activeColor: AppColors.textAndBackgroundColorButton,
            inactiveThumbColor: AppColors.orange,
          ),
        ),
        const Divider(color: Colors.black),
      ],
    );
  }
}
