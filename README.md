A simple command-line application.

# enumeracion

```dart
enum Alineacion {
  izquierda,derecha,centro,ninguna
}

//usar enumeracion
var valor=Alineacion.derecha;

```

¿Por que?
Porque supongamos que queremos alinear a la derecha, es mas facil entender

> Alineacion.derecha

en vez de

> 1

y se presta para menos errores de digitacion que escribir

> "derecha"


# constructores de clase

## constructor basico 

```dart
class Clase1 {
  int campo;
  
  Clase1(int campo);
  
}
// para llamarla
var a1=Clase1(20);
```

## constructor con argumentos con nombre

```dart
class Clase1 {
  int campo;
  int campo2;
  
  Clase1({required int campo, int campo2=0});
  
}
// para llamarla
var a1=Clase1(campo:20);
```

## constructor con nombre

```dart
class Clase1 {
  int campo;
  int campo2;
  
  Clase1({required int campo, int campo2=0});
  Clase1.ejemplo(int campo,int campo2);
  
}
// para llamarla
var a1=Clase1(campo:20);
var a2=Clase1.ejemplo(20,30);
```

## mezcla de constructor con y sin nombre

```dart
class Clase1 {
  int campo;
  int campo2;
  
  Clase1(int campo,{int campo2=0});

  
}
// para llamarla
var a1=Clase1(20,campo2:20);

```

# Future y Stream

```dart
Future<int> ejemploFuture() async {
  await Future.delayed(Duration(seconds: 1));
  return 123;
}
```

```dart
Stream<DateTime> ejemploStream() async* {
  while(true) {
    await Future.delayed(Duration(seconds: 2));
    var ahora = DateTime.now();
    yield ahora; // devuelve un valor y sigue trabajando
  }
}
```