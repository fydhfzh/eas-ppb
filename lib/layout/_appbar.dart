import 'package:eas_ppb/constants/colors.dart';
import 'package:flutter/material.dart';

class AppBarAlfamind extends StatelessWidget implements PreferredSizeWidget {
  final bool showOwnerIcon;

  const AppBarAlfamind({super.key, this.showOwnerIcon = true});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: tdRed,
      leading: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GestureDetector(
          onTap: () => Navigator.pushReplacementNamed(context, '/product'),
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(25.0),
                bottomRight: Radius.circular(25.0)),
            child: Image.asset(
              'lib/images/alfamind logo crop.png',
              scale: 1,
            ),
          ),
        ),
      ),
      leadingWidth: 100,
      actions: [
        showOwnerIcon
            ? ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/profile');
                },
                style: ElevatedButton.styleFrom(shape: const CircleBorder()),
                child: CircleAvatar(
                  radius: 25,
                  backgroundColor: tdWhite,
                  child: Padding(
                    padding: const EdgeInsets.all(3),
                    child: ClipOval(
                      child: Image.asset(
                        'lib/images/owner.jpg',
                        height: 100,
                        width: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              )
            : const SizedBox.shrink(),
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
