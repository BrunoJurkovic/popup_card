library popup_card;

import 'package:flutter/material.dart';
import 'package:popup_card/src/hero_route.dart';

class PopupItemLauncher extends StatelessWidget {
  final Object tag;
  final Widget child;
  final Widget popUp;
  const PopupItemLauncher({Key key, this.tag, this.child, this.popUp})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push(HeroDialogRoute(builder: (context) {
            return popUp;
          }));
        },
        child: Hero(
          tag: tag,
          child: child,
        ),
      ),
    );
  }
}

class PopUpItem extends StatelessWidget {
  final Object tag;
  final Widget builder;
  const PopUpItem({Key key, this.tag, this.builder}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Hero(
          tag: tag,
          child: Material(
            color: Colors.black54,
            elevation: 2,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: builder,
                // child: Column(
                //   mainAxisSize: MainAxisSize.min,
                //   children: [
                //     const TextField(
                //       decoration: InputDecoration(
                //         hintText: 'New todo',
                //         border: InputBorder.none,
                //       ),
                //       cursorColor: Colors.white,
                //     ),
                //     const Divider(
                //       color: Colors.white,
                //       thickness: 0.2,
                //     ),
                //     const TextField(
                //       decoration: InputDecoration(
                //         hintText: 'Write a note',
                //         border: InputBorder.none,
                //       ),
                //       cursorColor: Colors.white,
                //       maxLines: 6,
                //     ),
                //     const Divider(
                //       color: Colors.white,
                //       thickness: 0.2,
                //     ),
                //     TextButton(
                //       onPressed: () {},
                //       child: const Text('Add'),
                //     ),
                //   ],
                // ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
