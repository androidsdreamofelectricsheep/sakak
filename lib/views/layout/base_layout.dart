import 'package:flutter/material.dart';
import 'package:sakak/core/utils/email_contact.dart';
import 'package:sakak/views/widgets/floating_action_button_widget.dart';

class BaseLayout extends StatelessWidget {
  final Widget child;
  final String appBarTitle;
  final bool isAppbarIconNeeded;
  final bool showFloatingActionButton;

  const BaseLayout(
      {super.key,
      required this.appBarTitle,
      required this.child,
      required this.isAppbarIconNeeded,
      required this.showFloatingActionButton});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(appBarTitle),
        actions: [
          isAppbarIconNeeded
              ? IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.shopping_cart_rounded))
              : const SizedBox.shrink()
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: child,
        ),
      ),
      floatingActionButton: renderFloatingButton(),
    );
  }

  renderFloatingButton() {
    return showFloatingActionButton
        ? FloatingActionButtonWidget(
            onPressed: () {
              emailContact();
            },
          )
        : null;
  }
}
