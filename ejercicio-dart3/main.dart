Map<String, List<String>> userProfile = {
  "**HARDCORE**": [
    'customizacion',
    'root',
    'launchers',
    'sideloading',
    'control total',
  ],

  "**EJECUTIVO**": [
    'estabilidad',
    'sin lags',
    'nulos fallos',
    'sin crashes',
    'rendimiento consistente',
  ],
};

List<String> platformAttributes =
  [
    'customizacion',
    'root',
    'sideloading',
    'flexibilidad',
    'estabilidad',
    'optimizacion',
    'seguridad',
    'rendimiento consistente',
  ];

//Usen una función que reciba el mapa de perfil, recorra la lista de atributos con un ciclo y use condicionales para hacer el 'match' perfecto.

String recomendarPlataforma(String perfil, Map<String, List<String>> userProfile, List<String> platformAttributes) {
 List<String> preferencias = userProfile[perfil]!;

   int coincidenciasPersonalizacion = 0;
   int coincidenciasEstabilidad = 0;

  for (String atributo in platformAttributes) {

    if (preferencias.contains(atributo)) {

      if (atributo == "customizacion" ||
          atributo == "root" ||
          atributo == "launchers" ||
          atributo == "sideloading" ||
          atributo == "control total") {

        coincidenciasPersonalizacion++;

      } else if (atributo == "estabilidad" ||
                 atributo == "sin lags" ||
                 atributo == "sin crashes" ||
                 atributo == "rendimiento consistente" ||
                 atributo == "seguridad" ||
                 atributo == "nulos fallos") {

        coincidenciasEstabilidad++;
      }
    }
  }

  if (coincidenciasPersonalizacion > coincidenciasEstabilidad) {
    return "Se recomienda Android por mayor libertad de personalización.";
  } else {
    return "Se recomienda iOS por mayor estabilidad y menor riesgo de fallos.";
  }
}

void main() {

  String perfilSeleccionado = "**HARDCORE**";

  String resultado = recomendarPlataforma(
    perfilSeleccionado,
    userProfile,
    platformAttributes
  );

  print("Perfil: $perfilSeleccionado");
  print(resultado);
}

  