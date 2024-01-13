import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['en', 'pl'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  String? get languageShortCode =>
      _languagesWithShortCode.contains(locale.toString())
          ? '${locale.toString()}_short'
          : null;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? enText = '',
    String? plText = '',
  }) =>
      [enText, plText][languageIndex] ?? '';

  static const Set<String> _languagesWithShortCode = {
    'ar',
    'az',
    'ca',
    'cs',
    'da',
    'de',
    'dv',
    'en',
    'es',
    'et',
    'fi',
    'fr',
    'gr',
    'he',
    'hi',
    'hu',
    'it',
    'km',
    'ku',
    'mn',
    'ms',
    'no',
    'pt',
    'ro',
    'ru',
    'rw',
    'sv',
    'th',
    'uk',
    'vi',
  };
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    final language = locale.toString();
    return FFLocalizations.languages().contains(
      language.endsWith('_')
          ? language.substring(0, language.length - 1)
          : language,
    );
  }

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // First_Page
  {
    'wksajzrp': {
      'en': 'Reenactor\'s Glossary',
      'pl': 'Glosariusz Rekonstruktora',
    },
    'a0evjnnk': {
      'en': 'Welcome Reenactor!',
      'pl': 'Witaj Rekonstruktorze!',
    },
    'zln2sesd': {
      'en':
          'As the tournament approaches and you\'re uncertain about your character? You\'ve come to the right place for inspiration!',
      'pl':
          'Zbliża się turniej a ty wciąż szykasz inspiracji dla swojej postaci? \nW takim razie trafiłeś w idealne miejsce!',
    },
    'stk7pqdw': {
      'en': 'Log in!',
      'pl': 'Zaloguj się!',
    },
    '68qmahl5': {
      'en': 'Do not have  yet account?',
      'pl': 'Nie masz jeszcze konta?',
    },
    'efkvky4n': {
      'en': 'Sign up!',
      'pl': 'Rejestracja!',
    },
    'ur5g72so': {
      'en': 'English',
      'pl': 'Angielski',
    },
    'aveo63vs': {
      'en': 'Polish',
      'pl': 'Polski',
    },
    'lx5tsdlz': {
      'en': 'Home',
      'pl': 'Dom',
    },
  },
  // CharacterPage
  {
    '86nqbdlr': {
      'en': 'Welcome, ',
      'pl': 'Witaj,',
    },
    '95jxszkb': {
      'en': 'Are you ready to create a whole new story and bring it to live?',
      'pl':
          'Czy jesteś gotowy, aby stworzyć zupełnie nową historię i ożywić ją?',
    },
    '8pubkzjp': {
      'en': 'Generate my character!',
      'pl': 'Wygeneruj moją postać!',
    },
    'i4slblnq': {
      'en': 'New ',
      'pl': 'Nowy',
    },
  },
  // EventsPage
  {
    'bwp1yxt1': {
      'en': 'My events:',
      'pl': 'Moje wydarzenia:',
    },
    'fzn6drqe': {
      'en': 'Add new event!',
      'pl': 'Dodaj nowe wydarzenie!',
    },
    '14sxi1fp': {
      'en': 'Events',
      'pl': 'Wydarzenia',
    },
  },
  // ChestPage
  {
    'zucupfl9': {
      'en': 'My chest of items:',
      'pl': 'Moja skrzynia z przedmiotami:',
    },
    '67hdtza1': {
      'en': 'Add new item!',
      'pl': 'Dodaj nowy przedmiot!',
    },
    'y21bqeza': {
      'en': 'Chest',
      'pl': 'Skrzynia',
    },
  },
  // FamilyPage
  {
    'iyhyljot': {
      'en': 'My characters: ',
      'pl': 'Moje postacie:',
    },
    'sgxaudf5': {
      'en': 'Family',
      'pl': 'Rodzina',
    },
  },
  // SettingsPage
  {
    'i1y7m8ls': {
      'en': 'Settings',
      'pl': 'Ustawienia',
    },
    '81mwnhyj': {
      'en': 'Dark Mode',
      'pl': 'Tryb ciemny',
    },
    'bmw1sbdc': {
      'en': 'Language',
      'pl': 'Język',
    },
    'it3wpnya': {
      'en': 'English',
      'pl': 'Angielski',
    },
    '1e4miq01': {
      'en': 'Polish',
      'pl': 'Polski',
    },
    'h5ghzdoz': {
      'en': 'Notifications',
      'pl': 'Powiadomienia',
    },
    'zeu3khdd': {
      'en': 'Privacy Policy',
      'pl': 'Polityka prywatności',
    },
    't6bco0na': {
      'en': 'Terms of Service',
      'pl': 'Warunki usługi',
    },
    'weh6et59': {
      'en': 'Support',
      'pl': 'Wsparcie',
    },
    '3fphji8p': {
      'en': 'Log Out',
      'pl': 'Wyloguj',
    },
    'em3h9o5n': {
      'en': 'Settings',
      'pl': 'Ustawienia',
    },
  },
  // NewItemPage
  {
    'ip3sjb7q': {
      'en': 'Back to chest page',
      'pl': 'Powrót do skrzyni',
    },
    '2bvd448d': {
      'en': 'Name of the Item :',
      'pl': 'Nazwa przedmiotu:',
    },
    'naesssh3': {
      'en': 'Put name here...',
      'pl': 'Wpisz tutaj nazwę...',
    },
    'usd90e0j': {
      'en': 'Category of the item:',
      'pl': 'Kategoria przedmiotu:',
    },
    'ph2i94r8': {
      'en': 'Ubrania',
      'pl': 'naczynia',
    },
    'lvfshkrp': {
      'en': 'armoury',
      'pl': 'opancerzenie',
    },
    'ep6192v3': {
      'en': 'clothes',
      'pl': 'odzież',
    },
    '2akkbh5z': {
      'en': 'Please select...',
      'pl': 'Proszę wybrać...',
    },
    'nuz38qv0': {
      'en': 'Search for an item...',
      'pl': 'Wyszukaj przedmiot...',
    },
    'al3pm5f0': {
      'en': 'Kind of the item:',
      'pl': 'Rodzaj przedmiotu:',
    },
    'ciyzl5eq': {
      'en': '',
      'pl': '',
    },
    'ryskuqlw': {
      'en': 'Dress',
      'pl': 'Suknia',
    },
    '5w9spqde': {
      'en': 'Shoes',
      'pl': 'buty',
    },
    'efau3auv': {
      'en': 'pouch',
      'pl': 'sakwa',
    },
    'm80i2njs': {
      'en': 'Please select...',
      'pl': 'Proszę wybrać...',
    },
    '8muohi32': {
      'en': 'Search for an item...',
      'pl': 'Wyszukaj przedmiot...',
    },
    'mmlicfcb': {
      'en': 'Level of richness:',
      'pl': 'Poziom bogactwa:',
    },
    'x9h2xrzb': {
      'en': 'Upload a photo of the Item:',
      'pl': 'Prześlij zdjęcie przedmiotu:',
    },
    'ddeyqia9': {
      'en': 'Item description',
      'pl': 'Opis przedmiotu',
    },
    'zyk7dpbb': {
      'en': 'Optionally you can add item description...',
      'pl': 'Opcjonalnie możesz dodać opis przedmiotu...',
    },
    '82x7pocy': {
      'en': 'Save Item!',
      'pl': 'Zapisz przedmiot!',
    },
    'sv7nx2gg': {
      'en': 'Chest',
      'pl': 'Skrzynia',
    },
  },
  // NewCharacterPage
  {
    'n1g1mvke': {
      'en': 'Back to character',
      'pl': 'Powrót do postaci',
    },
    'pj9wpwld': {
      'en': 'Name of the character :',
      'pl': 'Imię postaci:',
    },
    'qhwjvf3d': {
      'en': 'Put name here...',
      'pl': 'Wpisz tutaj imię...',
    },
    '5563we7c': {
      'en': 'Gender of the character :',
      'pl': 'Płeć postaci:',
    },
    '1cgbqkcb': {
      'en': 'Male',
      'pl': 'Mężczyzna',
    },
    'a8w3dpu2': {
      'en': 'Female',
      'pl': 'Kobieta',
    },
    'v5hb2trl': {
      'en': 'Age:',
      'pl': 'Wiek:',
    },
    'lqvwz10y': {
      'en': 'Put name here...',
      'pl': 'Wpisz tutaj imię...',
    },
    '9c9pyqs2': {
      'en': 'Origin:',
      'pl': 'Pochodzenie:',
    },
    'zyucv9hk': {
      'en': 'Put origin here...',
      'pl': 'Wpisz tutaj pochodzenie...',
    },
    'snm0l8q9': {
      'en': 'Profession:',
      'pl': 'Zawód:',
    },
    'pjfk8iku': {
      'en': 'Put profession here...',
      'pl': 'Wpisz tu zawód...',
    },
    'ms5t2fkt': {
      'en': 'To which social class does he belong:',
      'pl': 'Do jakiej klasy społecznej należy:',
    },
    'c28riaws': {
      'en': 'Peasantry',
      'pl': 'Chłopstwo',
    },
    'm9eno0x5': {
      'en': 'Middle class',
      'pl': 'Klasa średnia',
    },
    'r0fr7uy0': {
      'en': 'Nobility',
      'pl': 'Szlachta',
    },
    'a92rujfj': {
      'en': 'Clergy',
      'pl': 'Kler',
    },
    'xr4yym45': {
      'en': 'Please select...',
      'pl': 'Proszę wybrać...',
    },
    '47c2bacz': {
      'en': 'Search for an item...',
      'pl': 'Wyszukaj przedmiot...',
    },
    'zqdocbsv': {
      'en': 'Level of richness:',
      'pl': 'Poziom bogactwa:',
    },
    'r83soxlp': {
      'en': 'What event are you attending?',
      'pl': 'W jakim wydarzeniu bierzesz udział?',
    },
    'jjf1p855': {
      'en': '[Optionall] Pick event from list',
      'pl': '[Opcjonalnie] Wybierz wydarzenie z listy',
    },
    '6l5wu4fp': {
      'en': 'Search for an item...',
      'pl': 'Wyszukaj przedmiot...',
    },
    'mbaalgmd': {
      'en': 'What items are owned by the character?',
      'pl': 'W jakim wydarzeniu bierzesz udział?',
    },
    '018udzb3': {
      'en': '[Optionall] Pick items from list',
      'pl': '[Opcjonalnie] Wybierz przedmioty z listy',
    },
    '8l5x42vl': {
      'en': 'Search for an item...',
      'pl': 'Wyszukaj przedmiot...',
    },
    '9k4pz4ux': {
      'en': 'Go to generator!',
      'pl': 'Przejdź do generatora!',
    },
    '9p95zsul': {
      'en': 'Field is required',
      'pl': 'To pole jest wymagane',
    },
    'eu7qzvxp': {
      'en': 'Please choose an option from the dropdown',
      'pl': 'Wybierz opcję z menu rozwijanego',
    },
    'l3y3elx6': {
      'en': 'Chest',
      'pl': 'Skrzynia',
    },
  },
  // NewEventPage
  {
    'd0xre0zf': {
      'en': 'Back to event',
      'pl': 'Powrót do wydarzenia',
    },
    'xvl0pi6p': {
      'en': 'Name of the event :',
      'pl': 'Nazwa wydarzenia:',
    },
    'mhzzr7qw': {
      'en': 'Put name here...',
      'pl': 'Wpisz tutaj imię...',
    },
    'lr4qf1ov': {
      'en': 'Dating the event from... to ...',
      'pl': 'Datowanie wydarzenia od... do...',
    },
    '23zuuicv': {
      'en': 'From year',
      'pl': 'Od roku',
    },
    'dz1up8aq': {
      'en': 'To year',
      'pl': 'Do roku',
    },
    'bq2eszr7': {
      'en': 'Localisation:',
      'pl': 'Lokalizacja:',
    },
    'abrcfrwq': {
      'en': 'Put name here...',
      'pl': 'Wpisz tutaj imię...',
    },
    '51u95sie': {
      'en': 'Description of the event',
      'pl': 'Opis wydarzenia',
    },
    'cnly8bnc': {
      'en': 'Put name here...',
      'pl': 'Wpisz tutaj imię...',
    },
    'rl4sy4vv': {
      'en': 'Save new event!',
      'pl': 'Zapisz nowe wydarzenie!',
    },
    '88qnz2ll': {
      'en': 'Field is required',
      'pl': 'To pole jest wymagane',
    },
    'bfgiluxu': {
      'en': 'Please choose an option from the dropdown',
      'pl': 'Wybierz opcję z menu rozwijanego',
    },
    'nrcg07ng': {
      'en': 'Chest',
      'pl': 'Skrzynia',
    },
  },
  // CreateAccountPage
  {
    'h785o85v': {
      'en': 'Create an account',
      'pl': 'Utwórz konto',
    },
    'p5iwmci8': {
      'en': 'Let\'s get started by filling out the form below.',
      'pl': 'Zacznijmy od wypełnienia poniższego formularza.',
    },
    '702ugtw3': {
      'en': 'Email',
      'pl': 'E-mail',
    },
    '6pgl2v8v': {
      'en': 'Your Nickname',
      'pl': 'Twój nick',
    },
    'ur8v36ep': {
      'en': 'Password',
      'pl': 'Hasło',
    },
    'qp8ouzwo': {
      'en': 'Confirm Password',
      'pl': 'Potwierdź hasło',
    },
    'bh5ie2d2': {
      'en': 'Create Account',
      'pl': 'Utwórz konto',
    },
    '8bhr6o9v': {
      'en': 'Already have an account? ',
      'pl': 'Posiadasz już konto?',
    },
    'ya69avbc': {
      'en': 'Sign IN',
      'pl': 'Zalouj się',
    },
    'a0juklhm': {
      'en': 'By signing up, you agree to our',
      'pl': 'Rejestrując się, wyrażasz zgodę na nasze',
    },
    'tnea08fp': {
      'en': 'Terms of Service',
      'pl': 'Warunki usługi',
    },
    'axptkmm7': {
      'en': 'and',
      'pl': 'I',
    },
    'o1bo6zqn': {
      'en': 'Privacy Policy',
      'pl': 'Politykę prywatności',
    },
    'abeqwbtg': {
      'en': 'Home',
      'pl': 'Dom',
    },
  },
  // LogInPage
  {
    'a5vdnoqt': {
      'en': 'Log in to  account',
      'pl': 'Zaloguj się na konto',
    },
    'q3z2xgrv': {
      'en': 'Email',
      'pl': 'E-mail',
    },
    '4bs416gd': {
      'en': 'Password',
      'pl': 'Hasło',
    },
    'jgdh3c18': {
      'en': 'Sign IN',
      'pl': 'Zaloguj się',
    },
    'jmkoa1pn': {
      'en': 'Home',
      'pl': 'Dom',
    },
  },
  // SingleEventPage
  {
    'gyqj5k54': {
      'en': 'Back to events',
      'pl': 'Powrót do wydarzeń',
    },
    'x1rrc9mq': {
      'en': 'Delete',
      'pl': 'Usuń',
    },
    'hyte7ekh': {
      'en': 'Edit  ',
      'pl': 'Edyuj',
    },
    '1aaf1nec': {
      'en': 'Events',
      'pl': 'Wydarzenia',
    },
  },
  // SingleItemPage
  {
    'ys08q329': {
      'en': 'Back to chest',
      'pl': 'Powrót do skrzyni',
    },
    '7n5oh5o9': {
      'en': 'Delete',
      'pl': 'Usuń',
    },
    '65gxfe0e': {
      'en': 'Edit  ',
      'pl': 'Edytuj',
    },
    'u4ofqctl': {
      'en': 'Events',
      'pl': 'Wydarzenia',
    },
  },
  // EditSingleEventPage
  {
    'cykec4yv': {
      'en': 'Back to event',
      'pl': 'Powrót do wydarzeń',
    },
    '73me3q4y': {
      'en': 'Label here...',
      'pl': 'Etykieta tutaj...',
    },
    'w1zeg8ni': {
      'en': 'Label here...',
      'pl': 'Etykieta tutaj...',
    },
    '661x98la': {
      'en': 'Label here...',
      'pl': 'Etykieta tutaj...',
    },
    'f8dtp7xh': {
      'en': 'Label here...',
      'pl': 'Etykieta tutaj...',
    },
    'rmoxkdf5': {
      'en': 'Label here...',
      'pl': 'Etykieta tutaj...',
    },
    '0c2anti9': {
      'en': 'Update',
      'pl': 'Aktualizacja',
    },
    '80h1qb2l': {
      'en': 'Events',
      'pl': 'Wydarzenia',
    },
  },
  // GeneratorPage
  {
    '4eu1t638': {
      'en': 'Back to character',
      'pl': 'Powrót do charakteru',
    },
    'xdne63af': {
      'en': 'Character Generator',
      'pl': 'Generator znaków',
    },
    'qfuthus2': {
      'en': 'Picked Event: ',
      'pl': 'Wybrane wydarzenie:',
    },
    'hu9vnxc3': {
      'en': 'Name: ',
      'pl': 'Nazwa:',
    },
    'd30vg8mi': {
      'en': 'Gender:',
      'pl': 'Płeć:',
    },
    '0qab5vft': {
      'en': 'Age:',
      'pl': 'Wiek:',
    },
    'bjoucxos': {
      'en': 'Where does it come from:',
      'pl': 'Skąd pochodzi:',
    },
    'mp7zidf3': {
      'en': 'Profession:',
      'pl': 'Profesja',
    },
    'v7aamqbe': {
      'en': 'Social class:',
      'pl': 'Klasa Społeczna',
    },
    'xvo7iaul': {
      'en': 'Wealth lever',
      'pl': 'Poziom bogactwa',
    },
    'un31z09o': {
      'en': 'Number of picked Items: ',
      'pl': 'Liczba wybranych przedmiotów:',
    },
    'rle7t94o': {
      'en': 'Would you like to add sth?',
      'pl': 'Czy chcesz coś dodać?',
    },
    'auv8kbpb': {
      'en': 'Enter your details here...',
      'pl': 'Wpisz tutaj swoje dane...',
    },
    'qnd1851q': {
      'en': 'Generate Character!',
      'pl': 'Generuj postać!',
    },
    'y812ncfj': {
      'en': '< Generating characters takes around 60 sec. >',
      'pl': '< Generowanie postaci zajmuje ok. 60 sek. >',
    },
    '5nghjjbr': {
      'en': 'Home',
      'pl': 'Dom',
    },
  },
  // GeneratorPageDescription
  {
    'ruuqt1e7': {
      'en': 'Generated character',
      'pl': 'Wygenerowana postać',
    },
    '94chhlfm': {
      'en': 'Wygenereuj wizualizację',
      'pl': 'Wygeneruj wizualizację',
    },
    '1aqi85k8': {
      'en': 'Save without visualization ',
      'pl': 'Zapisz bez wizualizacji',
    },
    '923j8egl': {
      'en': 'Home',
      'pl': 'Dom',
    },
  },
  // EditSingleItemPage
  {
    'x8ke3jvz': {
      'en': 'Back to chest',
      'pl': 'Powrót do skrzyni',
    },
    'gaf5kduu': {
      'en': 'Label here...',
      'pl': 'Etykieta tutaj...',
    },
    'l9oo4mdf': {
      'en': 'Ubrania',
      'pl': 'naczynia',
    },
    'tw6vx1pd': {
      'en': 'armoury',
      'pl': 'opancerzenie',
    },
    '8bby44k1': {
      'en': 'clothes',
      'pl': 'odzież',
    },
    'qozenglh': {
      'en': 'Please select...',
      'pl': 'Proszę wybrać...',
    },
    'ssrdk6j8': {
      'en': 'Search for an item...',
      'pl': 'Wyszukaj przedmiot...',
    },
    'svg6ot28': {
      'en': 'Dress',
      'pl': 'Suknia',
    },
    'wx62v2dw': {
      'en': 'Shoes',
      'pl': 'buty',
    },
    'klv0nnh6': {
      'en': 'pouch',
      'pl': 'sakwa',
    },
    '2aketveg': {
      'en': 'Please select...',
      'pl': 'Proszę wybrać...',
    },
    'jw7lpm2z': {
      'en': 'Search for an item...',
      'pl': 'Wyszukaj przedmiot...',
    },
    'bs3lwn1d': {
      'en': 'Label here...',
      'pl': 'Etykieta tutaj...',
    },
    'x7j8metd': {
      'en': 'Update',
      'pl': 'Aktualizacja',
    },
    '2qtux6v6': {
      'en': 'Events',
      'pl': 'Wydarzenia',
    },
  },
  // GeneratorPageWithVisualisation
  {
    'nr6lzd60': {
      'en': 'Generated character',
      'pl': 'Wygenerowana postać',
    },
    '7fozvsr7': {
      'en': 'Wygenereuj wizualizację',
      'pl': 'Wygeneruj wizualizację',
    },
    'u0qdwlqa': {
      'en': 'Save character',
      'pl': 'Zapisz postać',
    },
    'yrxgj4wj': {
      'en': 'Home',
      'pl': 'Dom',
    },
  },
  // SingleFamilyPage
  {
    'oslr1bpp': {
      'en': 'Back to family',
      'pl': 'Powrót do rodziny',
    },
    '9brvy8kc': {
      'en': 'Delete',
      'pl': 'Usuń',
    },
    'sijz4k2g': {
      'en': 'PDF',
      'pl': 'PDF',
    },
    '383dhcva': {
      'en': 'Edit  ',
      'pl': 'Edytuj',
    },
    'g2eus8yv': {
      'en': 'Events',
      'pl': 'Wydarzenia',
    },
  },
  // EditSingleFamilyPage
  {
    'nk4vasjk': {
      'en': 'Back to family',
      'pl': 'Powrót do rodziny',
    },
    'h7uagmbe': {
      'en': 'Name of the character :',
      'pl': 'Imię postaci:',
    },
    '9rifbcl1': {
      'en': 'Label here...',
      'pl': 'Etykieta tutaj...',
    },
    'ldprx7dn': {
      'en': 'Gender of the character :',
      'pl': 'Płeć postaci:',
    },
    'ercdm9rj': {
      'en': 'Male',
      'pl': 'Mężczyzna',
    },
    'fn5xh76m': {
      'en': 'Female',
      'pl': 'Kobieta',
    },
    'kxk4jp46': {
      'en': 'Age:',
      'pl': 'Wiek:',
    },
    'oi09oz4x': {
      'en': 'Label here...',
      'pl': 'Etykieta tutaj...',
    },
    '9bmdk5b7': {
      'en': 'Skad pochodzi :',
      'pl': 'Skad pochodzi:',
    },
    'mls47xo4': {
      'en': 'Label here...',
      'pl': 'Etykieta tutaj...',
    },
    'ix76ckmt': {
      'en': 'Jaką ma profesję:',
      'pl': 'Jaką ma profesję:',
    },
    '1hns30i6': {
      'en': 'Label here...',
      'pl': 'Etykieta tutaj...',
    },
    '663nwkkp': {
      'en': 'Do jakiej klasy spolecznej nalezy:',
      'pl': 'Wykonaj następującą klasyczną wartość:',
    },
    'r61zas6a': {
      'en': 'Chlopstwo',
      'pl': 'Chłopstwo',
    },
    'u56yvr70': {
      'en': 'Mieszczanstwo',
      'pl': 'Mieszczaństwo',
    },
    'iozbhrp4': {
      'en': 'Szlachta',
      'pl': 'Szlachta',
    },
    'kv1rny62': {
      'en': 'Duchowienstwo',
      'pl': 'Duchowieństwo',
    },
    'abp701i7': {
      'en': 'Please select...',
      'pl': 'Proszę wybrać...',
    },
    '9gpjb869': {
      'en': 'Search for an item...',
      'pl': 'Wyszukaj przedmiot...',
    },
    'xt106089': {
      'en': 'Level of richness:',
      'pl': 'Poziom bogactwa:',
    },
    'wv81vw4n': {
      'en': 'Opis postaci',
      'pl': 'Opisz postać',
    },
    'cx6wxhar': {
      'en': 'Label here...',
      'pl': 'Etykieta tutaj...',
    },
    'fi1mtl96': {
      'en': 'Update',
      'pl': 'Aktualizacja',
    },
    'iumd0dxl': {
      'en': 'Events',
      'pl': 'Wydarzenia',
    },
  },
  // Miscellaneous
  {
    'tva0pmqd': {
      'en': '',
      'pl': '',
    },
    'hktimebz': {
      'en': '',
      'pl': '',
    },
    'c1u0z3as': {
      'en': '',
      'pl': '',
    },
    '1ocvb1ye': {
      'en': '',
      'pl': '',
    },
    'glwh9wwr': {
      'en': '',
      'pl': '',
    },
    'sfx7tvl3': {
      'en': '',
      'pl': '',
    },
    'oopzo5ws': {
      'en': '',
      'pl': '',
    },
    'mxsg0fq4': {
      'en': '',
      'pl': '',
    },
    'z66f5zrk': {
      'en': '',
      'pl': '',
    },
    'ux5827ri': {
      'en': '',
      'pl': '',
    },
    'ur1ski2e': {
      'en': '',
      'pl': '',
    },
    '1ywr5s37': {
      'en': '',
      'pl': '',
    },
    '1o6cjvy4': {
      'en': '',
      'pl': '',
    },
    '2u0qjpa7': {
      'en': '',
      'pl': '',
    },
    '7hgoxoqn': {
      'en': '',
      'pl': '',
    },
    'nvh29k4c': {
      'en': '',
      'pl': '',
    },
    'k6vd11fk': {
      'en': '',
      'pl': '',
    },
    'dy5i0izp': {
      'en': '',
      'pl': '',
    },
    'yplq05wg': {
      'en': '',
      'pl': '',
    },
    '2s3j79e7': {
      'en': '',
      'pl': '',
    },
    'x727r45q': {
      'en': '',
      'pl': '',
    },
    'wzq82wk0': {
      'en': '',
      'pl': '',
    },
    '43qukrkf': {
      'en': '',
      'pl': '',
    },
    'm8lcqwqk': {
      'en': '',
      'pl': '',
    },
    'ock1dekz': {
      'en': '',
      'pl': '',
    },
    'n8va8o5c': {
      'en': '',
      'pl': '',
    },
  },
].reduce((a, b) => a..addAll(b));
