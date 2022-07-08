import 'package:animation_wrappers/animation_wrappers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qvid/Locale/language_cubit.dart';
import 'package:qvid/Locale/locale.dart';
import 'package:qvid/Routes/routes.dart';

class ChangeLanguagePage extends StatefulWidget {
  @override
  _ChangeLanguagePageState createState() => _ChangeLanguagePageState();
}

class _ChangeLanguagePageState extends State<ChangeLanguagePage> {
  late LanguageCubit _languageCubit;
  int? _selectedLanguage = -1;

  @override
  void initState() {
    super.initState();
    _languageCubit = BlocProvider.of<LanguageCubit>(context);
  }

  @override
  Widget build(BuildContext context) {
    final List<String> _languages = [
      'English',
      'Deutsch',
    ];
    return BlocBuilder<LanguageCubit, Locale>(
      builder: (context, locale) {
        _selectedLanguage = getCurrentLanguage(locale);
        return Scaffold(
          appBar: AppBar(
            title: Text(AppLocalizations.of(context)!.changeLanguage!),
          ),
          body: FadedSlideAnimation(
            Stack(
              children: [
                ListView.builder(
                  padding: EdgeInsets.only(bottom: 150),
                  itemCount: _languages.length,
                  itemBuilder: (context, index) => RadioListTile(
                    onChanged: (dynamic value) async {
                      setState(() {
                        _selectedLanguage = value;
                        // Navigator.pushNamed(
                        //     context, PageRoutes.bottomNavigation);
                      });
                      if (_selectedLanguage == 0) {
                        _languageCubit.selectEngLanguage();
                      } else if (_selectedLanguage == 9) {
                        _languageCubit.selectGermanLanguage();
                      }
                    },
                    groupValue: _selectedLanguage,
                    value: index,
                    title: Text(_languages[index]),
                  ),
                ),
                PositionedDirectional(
                    bottom: 20,
                    start: 20,
                    end: 20,
                    child: TextButton(
                      style: ButtonStyle(
                        padding: MaterialStateProperty.all(EdgeInsets.all(16)),
                        backgroundColor: MaterialStateProperty.all(
                            Theme.of(context).primaryColor),
                      ),
                      onPressed: () {
                        // _languageCubit.selectEngLanguage();
                        Navigator.pushNamed(
                            context, PageRoutes.bottomNavigation);
                      },
                      child: Text(
                        'Submit',
                        style: Theme.of(context).textTheme.button,
                      ),
                    )),
              ],
            ),
            beginOffset: Offset(0, 0.3),
            endOffset: Offset(0, 0),
            slideCurve: Curves.linearToEaseOut,
          ),
        );
      },
    );
  }

  int getCurrentLanguage(Locale locale) {
    if (locale == Locale('en'))
      return 0;
    else if (locale == Locale('de'))
      return 9;
    else
      return -1;
  }
}
