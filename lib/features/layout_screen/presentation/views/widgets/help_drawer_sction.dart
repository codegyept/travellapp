import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Help extends StatelessWidget {
  const Help({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
            trailing: Text(
          'Help',
          style: Theme.of(context).textTheme.bodyMedium,
        )),
        ListTile(
          leading: SvgPicture.asset('assets/images/Mybobking.svg'),
          title: Text(
            'My booking',
            style: Theme.of(context).textTheme.titleSmall,
          ),
          trailing: const Icon(Icons.arrow_forward_ios),
          onTap: () {},
        ),
        const Divider(color: Colors.black),
        ListTile(
          leading: SvgPicture.asset('assets/images/Send message.svg'),
          title: Text(
            'Send message',
            style: Theme.of(context).textTheme.titleSmall,
          ),
          trailing: const Icon(Icons.arrow_forward_ios),
          onTap: () {},
        ),
        const Divider(color: Colors.black),
      ],
    );
  }
}
