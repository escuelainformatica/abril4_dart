Future<int> ejemploFuture() async {
  await Future.delayed(Duration(seconds: 1));
  return 10;
}

Stream<DateTime> ejemploStream() async* {
  while(true) {
    await Future.delayed(Duration(seconds: 2));
    var ahora = DateTime.now();
    yield ahora; // devuelve un valor y sigue trabajando
  }
}


main() async {
  print("inicio de la funcion main");
  print("future:");
  print(await ejemploFuture());
  print("stream:");
  ejemploStream().forEach((element) {print(element);});
  print("fin de la funcion main");
}

