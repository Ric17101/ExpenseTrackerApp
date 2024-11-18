import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileWelcomeWidget extends StatelessWidget {
  const ProfileWelcomeWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  width: 50.0,
                  height: 50.0,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Theme.of(context).colorScheme.tertiary,
                  ),
                  // TODO: use this when user available
                  // child: Center(child: Text('ST')),
                ),
                Icon(
                  CupertinoIcons.person_2_fill,
                  color: Theme.of(context).colorScheme.secondary,
                ),
              ],
            ),
            SizedBox(width: 8.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Welcome!',
                  style: TextStyle(
                    fontSize: 12.0,
                    fontWeight: FontWeight.w700,
                    color: Theme.of(context).colorScheme.outline,
                  ),
                ),
                Text(
                  'John Page',
                  style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.w700,
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
                ),
              ],
            ),
          ],
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(
            CupertinoIcons.settings,
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
      ],
    );
  }
}
