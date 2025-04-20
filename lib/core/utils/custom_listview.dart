import 'package:dweather/core/utils/utlis_const.dart';

class CustomListViewSeparated extends StatefulWidget {
  final Widget Function(BuildContext, int) itemBuilder;
  final Widget? separatorWidget;
  final int itemCount;
  final bool shrinkWrap;
  final Axis? axisDirection;
  final ScrollController? scrollController;
  final ScrollPhysics? scrollPhysics;
  final EdgeInsetsGeometry? padding;
  final Widget Function(BuildContext, int)? separatorBuilder;
  final String? emptyListMessage;

  const CustomListViewSeparated({
    super.key,
    required this.itemCount,
    this.separatorWidget,
    this.shrinkWrap = true,
    this.scrollController,
    required this.itemBuilder,
    this.axisDirection,
    this.scrollPhysics,
    this.padding,
    this.separatorBuilder,
    this.emptyListMessage,
  });

  @override
  State<CustomListViewSeparated> createState() =>
      _CustomListViewSeparatedState();
}

class _CustomListViewSeparatedState extends State<CustomListViewSeparated> {
  @override
  Widget build(BuildContext context) {
    return (widget.itemCount == 0)
        ? Center(
            child:
                CustomText(title: widget.emptyListMessage ?? "No data found"))
        : ListView.separated(
            scrollDirection: widget.axisDirection ?? Axis.vertical,
            controller: widget.scrollController,
            shrinkWrap: widget.shrinkWrap,
            physics: widget.scrollPhysics,
            itemBuilder: widget.itemBuilder,
            padding: widget.padding,
            separatorBuilder: widget.separatorBuilder ??
                (context, index) {
                  return widget.separatorWidget ?? const Divider();
                },
            itemCount: widget.itemCount,
          );
  }
}
