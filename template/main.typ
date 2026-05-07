#import "lib.typ": ieee

#show: ieee.with(
  title: [Un Sistema de Composición Tipográfica para Desenredar el Proceso de Escritura Científica],
  summary: [
    El proceso de escritura científica a menudo se enreda con las complejidades de la composición tipográfica, lo que genera frustración y pérdida de tiempo para los investigadores. En este artículo, presentamos Typst, un nuevo sistema de composición tipográfica diseñado específicamente para la escritura científica. Typst desenreda el proceso de composición tipográfica, permitiendo a los investigadores redactar artículos más rápido. En una serie de experimentos demostramos que Typst ofrece varias ventajas, incluyendo una creación de documentos más rápida, una sintaxis simplificada y una mayor facilidad de uso.
  ],
  authors: (
    (
      name: "Martin Haug",
      department: [Co-Fundador],
      organization: [Typst GmbH],
      location: [Berlín, Alemania],
      email: "haug@typst.app",
    ),
    (
      name: "Laurenz Mädje",
      department: [Co-Fundador],
      organization: [Typst GmbH],
      location: [Berlín, Alemania],
      email: "maedje@typst.app",
    ),
    (
      name: "Hugo Coto",
      department: [Colaborador],
      location: [Santiago de Compostela, España],
      email: "hugo@hugocoto.com",
    ),
  ),
  index-terms: ("Escritura científica", "Composición tipográfica", "Creación de documentos", "Sintaxis"),
  bibliography: bibliography("refs.bib"),
  figure-supplement: [Figura.],
  paper-size: "us-letter",
  references-text: [referencias],
  index-terms-text: [_Términos índice_],
  summary-text: [Resumen],
  // El contenido del artículo.
  lang: "es",
  // typst no soporta meses en otro idioma que no sea inglés
  date: [
    // DD de mayo de AAAA
    #datetime.today().display("[day] de")
    mayo
    #datetime.today().display("de [year]")
  ],
)

= Introducción
La escritura científica es una parte crucial del proceso de investigación, ya que permite a los investigadores compartir sus hallazgos con la comunidad científica en general. Sin embargo, el proceso de composición tipográfica de documentos científicos puede ser a menudo una tarea frustrante y que consume mucho tiempo, particularmente cuando se utilizan herramientas anticuadas como LaTeX. A pesar de tener más de 30 años, sigue siendo una opción popular para la escritura científica debido a su potencia y flexibilidad. No obstante, también conlleva una curva de aprendizaje pronunciada, una sintaxis compleja y tiempos de compilación largos, lo que genera frustración y desesperación en muchos investigadores @netwok2020 @netwok2022.

```c
int main(int argc, char** argv)
{
  printf("Hello, World!\n");
  return 0;
}
```

== Resumen del artículo
En este artículo presentamos Typst, un nuevo sistema de composición tipográfica diseñado para agilizar el proceso de escritura científica y proporcionar a los investigadores una alternativa rápida, eficiente y fácil de usar frente a los sistemas existentes. Nuestro objetivo es sacudir el statu quo y ofrecer a los investigadores una mejor manera de abordar la escritura científica.

Al aprovechar algoritmos avanzados y una interfaz fácil de usar, Typst ofrece varias ventajas sobre los sistemas de composición tipográfica existentes, incluyendo una creación de documentos más rápida, una sintaxis simplificada y una mayor facilidad de uso.

Para demostrar el potencial de Typst, realizamos una serie de experimentos comparándolo con otros sistemas de composición tipográfica populares, incluido LaTeX. Nuestros hallazgos sugieren que Typst ofrece varios beneficios para la escritura científica, particularmente para usuarios novatos que pueden tener dificultades con las complejidades de LaTeX. Además, demostramos que Typst ofrece funciones avanzadas para usuarios experimentados, permitiendo una mayor personalización y flexibilidad en la creación de documentos.

En general, creemos que Typst representa un paso significativo hacia adelante en el campo de la escritura científica y la composición tipográfica, proporcionando a los investigadores una herramienta valiosa para optimizar su flujo de trabajo y centrarse en lo que realmente importa: su investigación. En las siguientes secciones, presentaremos Typst con más detalle y proporcionaremos evidencia de su superioridad sobre otros sistemas de composición tipográfica en una variedad de escenarios.

= Métodos <sec:methods>
#lorem(45)

$ a + b = gamma $ <eq:gamma>

#lorem(80)

#figure(
  placement: none,
  circle(radius: 15pt),
  caption: [Un círculo representando el Sol.],
) <fig:sun>

En @fig:sun se puede ver una representación común del Sol, que es una estrella ubicada en el centro del sistema solar.

#lorem(120)

#figure(
  caption: [Los Planetas del Sistema Solar y su Distancia Promedio al Sol],
  placement: top,
  table(
    // El estilo de la tabla no está definido por el IEEE. Siéntete libre de ajustar estos
    // parámetros y potencialmente moverlos a una regla set.
    columns: (6em, auto),
    align: (left, right),
    inset: (x: 8pt, y: 4pt),
    stroke: (x, y) => if y <= 1 { (top: 0.5pt) },
    fill: (x, y) => if y > 0 and calc.rem(y, 2) == 0 { rgb("#efefef") },

    table.header[Planeta][Distancia (millones de km)],
    [Mercurio], [57,9],
    [Venus], [108,2],
    [Tierra], [149,6],
    [Marte], [227,9],
    [Júpiter], [778,6],
    [Saturno], [1.433,5],
    [Urano], [2.872,5],
    [Neptuno], [4.495,1],
  ),
) <tab:planets>

En @tab:planets se pueden ver los planetas del sistema solar y su distancia promedio al Sol.
Las distancias se calcularon con @eq:gamma que presentamos en @sec:methods.

#lorem(240)

#lorem(240)
