enum Alineacion {
  izquierda,derecha,centro,ninguna
}
enum Formato {
  bold,italics,normal
}

class Estilo {
  String tipoFuente;
  String color;
  String colorFondo;

  Estilo({
    required this.tipoFuente,
    required this.color,
    required this.colorFondo,
  });

}


class WidgetText {
  String data;
  Alineacion alineacion;
  Formato formato;
  Estilo? estilo;

  WidgetText({
    required this.data,
    required this.alineacion,
    required this.formato,
    this.estilo
  });
}



main() {
  // dibujar un texto alineado a la derecha en formato bold
  var t=WidgetText(data: "hola", alineacion: Alineacion.derecha, formato:Formato.bold);
  // dibujar un texto alineado a la izquierda, en formato italic y con estilo, fuente arial,color rojo, color fondo: negro
  var t2=WidgetText(data: "hola",
      alineacion: Alineacion.izquierda,
      formato: Formato.italics,
      estilo: Estilo(tipoFuente: "arial",
          color: "rojo",
          colorFondo: "nnegro")
  );


}