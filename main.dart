List<Map<String, dynamic>> tech = [
  {'Name': 'Android', 'Cost': 1.40},

  {'Name': 'iOS', 'Cost': 10.40},
];

void showPlatform() {
  print('\n***AVAILABLE PLATFORMS***');

  tech.forEach(
    (platform) => print(
      "Name OS: ${platform['Name']} || Average Expense: ${platform['Cost']} USD/Monthly",
    ),
  );
}

Map<String, dynamic> evaluatePlatforms(List<Map<String, dynamic>> tech) {
  Map<String, dynamic> finalRecommendation = {};

  for (var platform in tech) {
    if (platform['Cost'] > 10) {
      finalRecommendation = {
        'Platform': platform['Name'],
        'Recommendation': 'High Profitability',
      };
    }
  }

  return finalRecommendation;
}

void main() {
  var result = evaluatePlatforms(tech);

  print('***FINAL RECOMMENDATION***');
  print(result);

  showPlatform();
}