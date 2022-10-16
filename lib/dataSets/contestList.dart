import 'package:gsg_first_project/classes/contest.dart';
import 'package:gsg_first_project/enums.dart';

List<Map<String, dynamic>> contestList = [
  {
    'c_id': 1,
    'contestName': 'Present Simple',
    'category': 'English',
    'description': '''Present Simple Contest :
    is a contest of category of English,
    Which is aimed to check some of basics
    of simple present tense.''',
    'questions': [
      {
        'q_id': 1,
        'qText': 'He --- football everyday.',
        'choice1': 'play',
        'choice2': 'plaing',
        'choice3': 'plays',
        'choice4': 'none',
        'correctChoice': Vals.three
      },
      {
        'q_id': 2,
        'qText': 'They --- football everyday.',
        'choice1': 'play',
        'choice2': 'plaing',
        'choice3': 'plays',
        'choice4': 'none',
        'correctChoice': Vals.one
      },
      {
        'q_id': 3,
        'qText': 'They always --- their tasks.',
        'choice1': 'doing',
        'choice2': 'do',
        'choice3': 'done',
        'choice4': 'does',
        'correctChoice': Vals.two
      },
      {
        'q_id': 4,
        'qText': 'He always --- Hummus and Falafel every day.',
        'choice1': 'eats',
        'choice2': 'eat',
        'choice3': 'eaten',
        'choice4': 'eating',
        'correctChoice': Vals.one
      },
      {
        'q_id': 5,
        'qText': 'they always --- Hummus and Falafel every day.',
        'choice1': 'eats',
        'choice2': 'eating',
        'choice3': 'eaten',
        'choice4': 'eat',
        'correctChoice': Vals.four
      }
    ],
    'scoreboard': []
  },
  {
    'c_id': 2,
    'contestName': 'الشعر العربي',
    'category': 'Arabic',
    'description': '''مسابقة الشعر العربي :
    هي مسابقة بسيطة من فئة اللغة العربية، و
    تختبر معلومات عامة عن الشعر و الشعراء.''',
    'questions': [
      {
        'q_id': 1,
        'qText': 'احد شعراء المعلقات',
        'choice1': 'عنترة بن شداد',
        'choice2': 'المتني',
        'choice3': 'تابط شراََ',
        'choice4': 'محمود درويش',
        'correctChoice': Vals.one
      },
      {
        'q_id': 2,
        'qText': 'احد شعراء المخضرمين',
        'choice1': 'الزير سالم',
        'choice2': 'امرؤ القيس',
        'choice3': 'كعب بن زهير',
        'choice4': 'المتنبي',
        'correctChoice': Vals.three
      },
      {
        'q_id': 3,
        'qText': 'قائل البيت: لكل شيء اذا ما تم نقصان --- هو',
        'choice1': 'الشافعي',
        'choice2': 'ابو البقاء الرندي',
        'choice3': 'المعتمد بن عباد',
        'choice4': 'درويش',
        'correctChoice': Vals.two
      },
      {
        'q_id': 4,
        'qText': 'من هو شاعر الرسول صلى الله عليه و سلم',
        'choice1': 'حسان بن ثابت',
        'choice2': 'المتني',
        'choice3': 'ابو بكر الصديق',
        'choice4': 'محمود درويش',
        'correctChoice': Vals.one
      },
      {
        'q_id': 5,
        'qText': 'من هو قائل البيت: يا دامي العينين و الكفين ان الليل زائل',
        'choice1': 'عنترة بن شداد',
        'choice2': 'المتني',
        'choice3': 'تابط شراََ',
        'choice4': 'محمود درويش',
        'correctChoice': Vals.four
      },
    ],
    'scoreboard': []
  },
  {
    'c_id': 3,
    'contestName': 'الدول و القارات',
    'category': 'Geography',
    'description': '''مسابقة الدول و القارات :
    هي مسابقة بسيطة من فئة الجغرافيا، و
    تختبر معلومات عامة عن الدول و القارات.''',
    'questions': [
      {
        'q_id': 1,
        'qText': 'في اي قارة تقع دولة النرويج؟',
        'choice1': 'آسيا',
        'choice2': 'افريقيا',
        'choice3': 'أوروبا',
        'choice4': 'أستراليا',
        'correctChoice': Vals.three
      },
      {
        'q_id': 2,
        'qText': 'في اي قارة تقع دولة ماليزيا ؟',
        'choice1': 'آسيا',
        'choice2': 'افريقيا',
        'choice3': 'أوروبا',
        'choice4': 'أستراليا',
        'correctChoice': Vals.one
      },
      {
        'q_id': 3,
        'qText': 'في اي قارة تقع دولة جيبوتي ؟',
        'choice1': 'آسيا',
        'choice2': 'افريقيا',
        'choice3': 'أوروبا',
        'choice4': 'أستراليا',
        'correctChoice': Vals.two
      },
      {
        'q_id': 4,
        'qText': 'ما هي اكبر القارات ؟',
        'choice1': 'آسيا',
        'choice2': 'افريقيا',
        'choice3': 'أوروبا',
        'choice4': 'أستراليا',
        'correctChoice': Vals.one
      },
      {
        'q_id': 5,
        'qText': 'في اي قارة يوجد اكبر عدد من السكان ؟',
        'choice1': 'آسيا',
        'choice2': 'افريقيا',
        'choice3': 'أوروبا',
        'choice4': 'أستراليا',
        'correctChoice': Vals.one
      }
    ],
    'scoreboard': []
  }
];
