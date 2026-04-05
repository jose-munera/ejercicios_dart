La solución implementa una comparación entre perfiles de usuario y atributos de plataforma para simular un proceso de toma de decisión similar al que usaría una empresa tecnológica al recomendar un producto.

Desde el punto de vista de negocio, segmentar usuarios permite ofrecer productos alineados con sus necesidades específicas. Un usuario "Hardcore" valora la libertad de personalización, mientras que un usuario "Ejecutivo" prioriza estabilidad y confiabilidad.

La implementación mediante estructuras como Map y List permite modelar este proceso de decisión de forma estructurada y escalable.

Tanto Hardcore como Ejecutivo se crearon como un Mapa con tipo de dato String, List>, de manera que cada perfil de usuario quede identificado. Los atributos de plataforma si quedaron como una Lista normal.

Se creó una función que recibe tanto el Mapa perfil de usuario como la Lista de atributos de plataforma. Mediante ciclo for se recorre la Lista de atributos de plataforma y con el uso de condicionales se suman las coincidencias a un contador para cada usuario, de manera que a mayor coincidencias, el sistema toma una decisión.