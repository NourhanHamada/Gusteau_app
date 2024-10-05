class AppString {
  static const String appName = 'GUSTEAU';
  static const String splashSubTitle = 'Anyone can cook';
  static const String onBoardTitle1 = 'Explore Recipes';
  static const String onBoardTitle2 = 'Utilize Leftovers';
  static const String onBoardTitle3 = 'Share recipe';
  static const String onBoardTitle4 = 'Meal schedule';
  static const String onBoardSubTitle1 =
      'We provide recipes based on what you have on hand';
  static const String onBoardSubTitle2 =
      'Start with ingredients that you have in your kitchen';
  static const String onBoardSubTitle3 =
      'You can invite your partner to cook with you';
  static const String onBoardSubTitle4 =
      'Build a meal plan to meet nutrition needs';
  static const List<String> onBoardTitles = [
    onBoardTitle1,
    onBoardTitle2,
    onBoardTitle3,
    onBoardTitle4,
  ];
  static const List<String> onBoardSubTitles = [
    onBoardSubTitle1,
    onBoardSubTitle2,
    onBoardSubTitle3,
    onBoardSubTitle4,
  ];

  // Validations
  static String validationEmail =
      r"[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?";
  static String validationPassword =
      r'(?=[A-Za-z0-9@#$%^&+!=]+$)^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[@#$%^&+!=])(?=.{8,}).*$';
  static String validationName = r'^[a-z A-Z]+$';
  static String validationPhone = r'^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\s\./0-9]*$';
}