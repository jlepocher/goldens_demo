import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:golden_tests/common/theme/custom_colors.dart';
import 'package:golden_tests/common/theme/custom_dimensions.dart';
import 'package:golden_tests/common/widgets/widget_details.dart';
import 'package:golden_tests/common/widgets/widget_list/widget_details_model.dart';
import 'package:golden_tests/common/widgets/widget_list/widgets_list.dart';
import 'package:golden_tests/common/widgets/widget_list/widgets_repository.dart';
import 'package:golden_tests/features/widget_details/widget_details_page.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  static String get routeName => "/";

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  _HomePageState() : _repository = GetIt.I<WidgetsRepository>();

  final WidgetsRepository _repository;
  late List<WidgetDetailsModel> _widgetsDetails;
  WidgetDetailsModel? _selectedWidget;

  @override
  void initState() {
    _widgetsDetails = _repository.getAll();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ScreenTypeLayout.builder(
          mobile: (_) => _LogoAndList(
            _widgetsDetails,
            showHelpCaption: true,
            onWidgetTap: _openWidgetDetailsPage,
          ),
          desktop: (_) => Row(
            children: [
              Flexible(
                flex: 1,
                child: _LogoAndList(
                  _widgetsDetails,
                  showHelpCaption: false,
                  onWidgetTap: _updateSelectedWidget,
                  selectedWidgetsDetails: _selectedWidget,
                ),
              ),
              Container(
                color: CustomColors.lightGrey,
                width: 1,
              ),
              Flexible(
                flex: 2,
                child: _SelectedWidgetDetails(selectedWidget: _selectedWidget),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _openWidgetDetailsPage(WidgetDetailsModel details) async {
    _selectedWidget = details;
    Navigator.pushNamed(
      context,
      WidgetDetailsPage.routeName,
      arguments: details,
    );
  }

  Future<void> _updateSelectedWidget(WidgetDetailsModel details) async {
    setState(() {
      _selectedWidget = details;
    });
  }
}

class _LogoAndList extends StatelessWidget {
  const _LogoAndList(
    this.widgetsDetails, {
    this.selectedWidgetsDetails,
    required this.showHelpCaption,
    required this.onWidgetTap,
  });

  final List<WidgetDetailsModel> widgetsDetails;
  final WidgetDetailsModel? selectedWidgetsDetails;
  final Future<void> Function(WidgetDetailsModel) onWidgetTap;
  final bool showHelpCaption;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: CustomDimensions.md),
        const FlutterLogo(size: 80),
        const SizedBox(height: CustomDimensions.md),
        if (showHelpCaption) const _HelpCaption(),
        Expanded(
          child: SingleChildScrollView(
            child: WidgetsList(
              widgetDetails: widgetsDetails,
              onWidgetTap: onWidgetTap,
              selectedWidgetDetails: selectedWidgetsDetails,
            ),
          ),
        )
      ],
    );
  }
}

class _SelectedWidgetDetails extends StatelessWidget {
  const _SelectedWidgetDetails({required this.selectedWidget});

  final WidgetDetailsModel? selectedWidget;

  @override
  Widget build(BuildContext context) {
    if (selectedWidget == null) {
      return const Center(child: _HelpCaption());
    } else {
      return Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  WidgetDetails(
                    model: selectedWidget!,
                    showName: true,
                  ),
                ],
              ),
            ),
          ),
        ],
      );
    }
  }
}

class _HelpCaption extends StatelessWidget {
  const _HelpCaption();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: CustomColors.lightGrey,
        borderRadius: BorderRadius.circular(CustomDimensions.md),
        border: Border.all(color: CustomColors.darkGrey),
      ),
      margin: const EdgeInsets.all(CustomDimensions.md),
      padding: const EdgeInsets.all(CustomDimensions.md),
      child: const Text(
        "Select a widget from the list to see its description.",
        textAlign: TextAlign.center,
      ),
    );
  }
}
