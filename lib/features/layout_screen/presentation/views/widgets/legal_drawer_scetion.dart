import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Legal extends StatelessWidget {
  const Legal({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          trailing: Text(
            'Legal',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ),
        ListTile(
          leading: SvgPicture.asset('assets/images/privcey.svg'),
          title: Text(
            'Privacy Policy',
            style: Theme.of(context).textTheme.titleSmall,
          ),
          trailing: const Icon(Icons.arrow_forward_ios),
          onTap: () {},
        ),
        const Divider(color: Colors.black),
        ListTile(
          leading: SvgPicture.asset('assets/images/Terms.svg'),
          title: Text(
            'Terms of Usage',
            style: Theme.of(context).textTheme.titleSmall,
          ),
          trailing: const Icon(Icons.arrow_forward_ios),
          onTap: () {},
        ),
        const Divider(color: Colors.black),
        ListTile(
          leading: SvgPicture.asset('assets/images/uodate.svg'),
          title: Text(
            'Update App',
            style: Theme.of(context).textTheme.titleSmall,
          ),
          trailing: SvgPicture.asset('assets/images/rowD.svg'),
          onTap: () {},
        ),
        const Divider(color: Colors.black),
        ListTile(
          leading: SvgPicture.asset('assets/images/aboutapp.svg'),
          title: Text(
            'About App',
            style: Theme.of(context).textTheme.titleSmall,
          ),
          trailing: const Icon(Icons.arrow_forward_ios),
          onTap: () {},
        ),
        const Divider(color: Colors.black),
        ListTile(
          leading: SvgPicture.asset('assets/images/logout.svg'),
          title: Text(
            'Logout',
            style: Theme.of(context).textTheme.titleSmall,
          ),
          trailing: const Icon(Icons.arrow_forward_ios),
          onTap: () {},
        ),
        Text(
          'Version 2.2.22',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ],
    );
  }
}
