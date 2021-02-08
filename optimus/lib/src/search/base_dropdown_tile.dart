import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:optimus/optimus.dart';
import 'package:optimus/src/typography/subtitle.dart';

class BaseDropdownTile extends StatefulWidget {
  const BaseDropdownTile({
    Key key,
    this.title,
    this.subtitle,
  }) : super(key: key);

  final Widget title;
  final Widget subtitle;

  @override
  _BaseDropdownTileState createState() => _BaseDropdownTileState();
}

class _BaseDropdownTileState extends State<BaseDropdownTile> {
  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            OptimusHighlightLow(child: widget.title),
            if (widget.subtitle != null) OptimusSubtitle(child: widget.subtitle)
          ],
        ),
      );
}