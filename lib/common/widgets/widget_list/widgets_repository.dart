import 'package:golden_tests/common/widgets/widget_list/widget_details_model.dart';

class WidgetsRepository {
  List<WidgetDetailsModel> getAll() {
    return [
      const WidgetDetailsModel("AppBar", """A Material Design app bar.

An app bar consists of a toolbar and potentially other widgets, such as a TabBar and a FlexibleSpaceBar. App bars typically expose one or more common actions with IconButtons which are optionally followed by a PopupMenuButton for less common operations (sometimes called the "overflow menu").

App bars are typically used in the Scaffold.appBar property, which places the app bar as a fixed-height widget at the top of the screen. For a scrollable app bar, see SliverAppBar, which embeds an AppBar in a sliver for use in a CustomScrollView.

The AppBar displays the toolbar widgets, leading, title, and actions, above the bottom (if any). The bottom is usually used for a TabBar. If a flexibleSpace widget is specified then it is stacked behind the toolbar and the bottom widget. The following diagram shows where each of these slots appears in the toolbar when the writing language is left-to-right (e.g. English):

The AppBar insets its content based on the ambient MediaQuery's padding, to avoid system UI intrusions. It's taken care of by Scaffold when used in the Scaffold.appBar property. When animating an AppBar, unexpected MediaQuery changes (as is common in Hero animations) may cause the content to suddenly jump. Wrap the AppBar in a MediaQuery widget, and adjust its padding such that the animation is smooth."""),
      const WidgetDetailsModel("Column", """A widget that displays its children in a vertical array.

To cause a child to expand to fill the available vertical space, wrap the child in an Expanded widget.

The Column widget does not scroll (and in general it is considered an error to have more children in a Column than will fit in the available room). If you have a line of widgets and want them to be able to scroll if there is insufficient room, consider using a ListView.

For a horizontal variant, see Row.

If you only have one child, then consider using Align or Center to position the child."""),
      const WidgetDetailsModel("Container", """A convenience widget that combines common painting, positioning, and sizing widgets.
      
A container first surrounds the child with padding (inflated by any borders present in the decoration) and then applies additional constraints to the padded extent (incorporating the width and height as constraints, if either is non-null). The container is then surrounded by additional empty space described from the margin.

During painting, the container first applies the given transform, then paints the decoration to fill the padded extent, then it paints the child, and finally paints the foregroundDecoration, also filling the padded extent.

Containers with no children try to be as big as possible unless the incoming constraints are unbounded, in which case they try to be as small as possible. Containers with children size themselves to their children. The width, height, and constraints arguments to the constructor override this.

By default, containers return false for all hit tests. If the color property is specified, the hit testing is handled by ColoredBox, which always returns true. If the decoration or foregroundDecoration properties are specified, hit testing is handled by Decoration.hitTest."""),
      const WidgetDetailsModel("ElevatedButton", """A Material Design "elevated button".

Use elevated buttons to add dimension to otherwise mostly flat layouts, e.g. in long busy lists of content, or in wide spaces. Avoid using elevated buttons on already-elevated content such as dialogs or cards.

An elevated button is a label child displayed on a Material widget whose Material.elevation increases when the button is pressed. The label's Text and Icon widgets are displayed in style's ButtonStyle.foregroundColor and the button's filled background is the ButtonStyle.backgroundColor.

The elevated button's default style is defined by defaultStyleOf. The style of this elevated button can be overridden with its style parameter. The style of all elevated buttons in a subtree can be overridden with the ElevatedButtonTheme, and the style of all of the elevated buttons in an app can be overridden with the Theme's ThemeData.elevatedButtonTheme property.

The static styleFrom method is a convenient way to create a elevated button ButtonStyle from simple values.

If onPressed and onLongPress callbacks are null, then the button will be disabled."""),
      const WidgetDetailsModel("FlutterLogo",
          """The Flutter logo, in widget form. This widget respects the IconTheme. For guidelines on using the Flutter logo, visit https://flutter.dev/brand."""),
      const WidgetDetailsModel(
          "Icon", """A graphical icon widget drawn with a glyph from a font described in an IconData such as material's predefined IconDatas in Icons.

Icons are not interactive. For an interactive icon, consider material's IconButton.

There must be an ambient Directionality widget when using Icon. Typically this is introduced automatically by the WidgetsApp or MaterialApp.

This widget assumes that the rendered icon is squared. Non-squared icons may render incorrectly."""),
      const WidgetDetailsModel("Image", """A widget that displays an image."""),
      const WidgetDetailsModel("Placeholder", """A widget that draws a box that represents where other widgets will one day be added.

This widget is useful during development to indicate that the interface is not yet complete.

By default, the placeholder is sized to fit its container. If the placeholder is in an unbounded space, it will size itself according to the given fallbackWidth and fallbackHeight."""),
      const WidgetDetailsModel("Row", """A widget that displays its children in a horizontal array.

To cause a child to expand to fill the available horizontal space, wrap the child in an Expanded widget.

The Row widget does not scroll (and in general it is considered an error to have more children in a Row than will fit in the available room). If you have a line of widgets and want them to be able to scroll if there is insufficient room, consider using a ListView.

For a vertical variant, see Column.

If you only have one child, then consider using Align or Center to position the child."""),
      const WidgetDetailsModel("Scaffold", """Implements the basic Material Design visual layout structure.

This class provides APIs for showing drawers and bottom sheets.

To display a persistent bottom sheet, obtain the ScaffoldState for the current BuildContext via Scaffold.of and use the ScaffoldState.showBottomSheet function."""),
      const WidgetDetailsModel("Text", """A run of text with a single style.

The Text widget displays a string of text with single style. The string might break across multiple lines or might all be displayed on the same line depending on the layout constraints.

The style argument is optional. When omitted, the text will use the style from the closest enclosing DefaultTextStyle. If the given style's TextStyle.inherit property is true (the default), the given style will be merged with the closest enclosing DefaultTextStyle. This merging behavior is useful, for example, to make the text bold while using the default font family and size."""),
      // const WidgetDetails("AppBar", """AAAA"""),
    ];
  }
}
