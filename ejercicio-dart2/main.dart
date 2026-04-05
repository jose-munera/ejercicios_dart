//Variable de umbral crítico
var criticalThreshold = 50.0;

//Creen una lista con los porcentajes de adopción de las versiones mas recientes
List<Map<String, dynamic>> platforms = [
  {'Platform': 'Android', 'Version': 15, 'Adoption': 19.3},

  {'Platform': 'iOS', 'Version': 18, 'Adoption': 82.0},
];

//Escriban una función que use un ciclo y condicionales para filtrar cuáles versiones están por debajo del umbral.

Map<String, dynamic> evaluatePlatforms(List<Map<String, dynamic>> platforms) {
  //Estrategia de Retrocompatibilidad
  Map<String, String> compatibility = {};

  for (var tech in platforms) {
    String name = tech['Platform'];
    if (tech['Adoption'] < criticalThreshold) {
      print('***CRITICAL THRESHOLD***');
      print("Name: ${tech['Platform']} || Adoption: ${tech['Adoption']}");

      print('\n***COMPATIBILITY STRATEGY***');

      if (name == 'Android') {
        compatibility[name] = 'Desarrollar versión compatible con Android 14';
      } else if (name == 'iOS') {
        compatibility[name] = 'Soportar iOS 17';
      }
      ;
    }
  }
  return compatibility;
}

void main() {
  var result = evaluatePlatforms(platforms);
  print(result);
}