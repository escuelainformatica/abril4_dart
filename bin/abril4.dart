// future
// Stream

class Widget1 {
  String titulo;
  // constructor
  Widget1(this.titulo);
}

class Widget2 {
  String titulo;
  int alto;
  int ancho;
  // constructor
  Widget2(this.titulo, this.alto, this.ancho);
}
class Widget3 {
  String titulo;
  int alto;
  int ancho;
  // constructor
  Widget3({required this.titulo, this.alto=300, this.ancho=300});
}
class WidgetText {
  String texto;
  String data;
  int maxLine;
  // constructor
  WidgetText(this.texto,
      {this.data="", this.maxLine=1,});
}

class WidgetText2 {
  String texto;
  String data;
  int maxLine;
  // constructor
  WidgetText2(this.texto,
      {this.data="", this.maxLine=1,});
  // constructor con nombre
  WidgetText2.nombre(this.texto,
      {this.data="hola mundo", this.maxLine=10,});
}



class WidgetContenedores {
  String texto;
  List childen;

  WidgetContenedores(this.texto,{
    required this.childen,
  });
}



void main(List<String> arguments) {
  print('Hello world!');

  var w=Widget1("hola");
  var w2=Widget2("hola", 200, 50);
  var w3=Widget3(titulo: "hola", alto: 400, ancho: 50);
  var w3b=Widget3(alto:300,titulo: "hola");

  var wtexto=WidgetText("hola",maxLine: 10);
  var wtexto2=WidgetText2.nombre("nombre");

  var wcontenedor=WidgetContenedores(
      "contenedor",
      childen: [
        Widget1("hola"),
        Widget2("hola", 200, 50)
      ]
  );

}
