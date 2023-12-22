import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/presentation/base/base_exception.dart';
import 'package:flutter_clean_architecture/utilities/widget/loading_indicator.dart';

mixin BasePageMixin<T extends StatefulWidget> on State<T> {
  Widget buildErrorWidget({String? message}) {
    return Center(
      child:
          Text(message ?? '', style: Theme.of(context).textTheme.titleMedium),
    );
  }

  Widget buildNoInternetWidget() {
    return const SizedBox.shrink();
  }

  Widget buildNoContentWidget() {
    return Center(
      child: Text('No internet connection',
          style: Theme.of(context).textTheme.titleMedium),
    );
  }

  Widget buildLoadingWidget() {
    return const LoadingIndicator();
  }

  // override this method for display custom error
  // this function could be useful for handle network error or authentication
  void showError(BaseException error, BuildContext context) {
    if (error.code == 401) {
      // TODO: Handle 401 error
      return;
    }

    if (error.message?.isNotEmpty ?? false) {
      showSnackMessage(error.message ?? '', context);
    }
  }

  void showSnackMessage(String message, BuildContext context) {
    final snackBar =
        SnackBar(content: Text(message), backgroundColor: Colors.red);
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  AppBar buildAppBar({
    required BuildContext context,
    bool showElevation = false,
    bool isCloseIcon = false,
    String? title,
    List<Widget> actions = const [],
    Widget? leading,
    PreferredSizeWidget? bottom,
    bool showBackButton = true,
    Function? backAction,
  }) {
    return AppBar(
      elevation: showElevation ? 1.0 : 0.0,
      centerTitle:
          (Theme.of(context).platform) == TargetPlatform.iOS ? true : false,
      title: Text(title ?? '',
          style: Theme.of(context)
              .textTheme
              .headline6
              ?.merge(Theme.of(context).appBarTheme.titleTextStyle)),
      actions: actions,
      leading: showBackButton
          ? _getLeading(
              leading: leading,
              isCloseIcon: isCloseIcon,
              backAction: backAction)
          : null,
      automaticallyImplyLeading: showBackButton,
      bottom: bottom,
    );
  }

  Widget? _getLeading(
      {Widget? leading, bool isCloseIcon = false, Function? backAction}) {
    if (leading != null) {
      return leading;
    }
    Icon icon;
    if (isCloseIcon) {
      icon = const Icon(Icons.close, size: 30);
    } else {
      icon = const Icon(Icons.arrow_back_ios, size: 30);
    }
    return ModalRoute.of(context)?.canPop == true
        ? Padding(
            padding: const EdgeInsets.only(left: 8),
            child: IconButton(
              icon: icon,
              onPressed: () {
                if (backAction != null) {
                  backAction.call();
                  return;
                }
                Navigator.of(context).maybePop();
              },
            ),
          )
        : null;
  }
}
