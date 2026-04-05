//Creen una lista de capacidades de IA (ej. 'Traducción en vivo', 'Generación de contenido', 'Resumen de web').

List<String> capabilitiesList = [
  'Traduccion en vivo',
  'Generacion de contenido',
  'Resumen de paginas web',
  'Resumen de documentos PDF',
  'Redaccion de correos profesionales',
  'Analisis de imagen',
  'Analisis de documentos',
  'Asistencia en programacion',
  'Generacion de codigo',
  'Integracion con apps del sistema',
  'Control por voz contextual',
  'Busqueda inteligente en el dispositivo',
  'Creacion de presentaciones',
  'Transcripcion de audio en tiempo real',
  'Respuesta contextual basada en historial',
  'Procesamiento en dispositivo (on-device)',
];

//Creen un mapa que asocie a Siri y Gemini con sus capacidades actuales según la fuente.
Map<String, List<String>> assistants = {
  'GEMINI': [
    'Traduccion en vivo',
    'Generacion de contenido',
    'Resumen de paginas web',
    'Analisis de imagen',
    'Gemini live',
    'Accion en apps externas',
    'Conversaciones multimodales',
    'Transcripcion de audio',
  ],

  'SIRI': [
    'Comandos por voz',
    'Integracion con apps ',
    'resumen web',
    'resumen de mensajes y documentos',
    'personalizacion en apps nativas',
    'edicion y escritura inteligente',
    'generacion de imagen',
    'IA on-device y privacidad',
  ],
};

//Escriban una función que devuelva un reporte comparativo final.

Map<String, int> result(
  Map<String, List<String>> assistants,
  List<String> capabilitiesList,
) {
  int matchesGemini = 0;
  int matchesSiri = 0;

  for (var ability in capabilitiesList) {
    if (assistants['GEMINI']!.contains(ability)) {
      matchesGemini++;
    }

    if (assistants['SIRI']!.contains(ability)) {
      matchesSiri++;
    }
  }

  return {'GEMINI': matchesGemini, 'SIRI': matchesSiri};
}

void main() {
  var evaluation = result(assistants, capabilitiesList);

  print('***FINAL COMPARATIVE REPORT***\n');
  evaluation.forEach((assistant, score) {
    print("$assistant has $score matches");
    print('____________________________');
  });
}