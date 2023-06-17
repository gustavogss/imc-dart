import 'dart:io';

void imcCalculate() {
  stdout.write('Digite seu peso em Kg: ');
  double peso = double.parse(stdin.readLineSync() ?? '');

  stdout.write('Digite sua altura em metros: ');
  double altura = double.parse(stdin.readLineSync() ?? '');

  double imc = (peso / (altura * altura));
  print('Seu IMC é: ' + imc.toStringAsFixed(2));

   if (imc < 16) {
    print('Magreza grave');
  } else if (imc >= 16 && imc < 17) {
    print('Magreza moderada');
    } else if (imc >= 17 && imc < 18.5) {
    print('Magreza leve');
    } else if (imc >= 18.5 && imc < 25) {
    print('Saudável');
    } else if (imc >= 25 && imc < 30) {
    print('Sobrepeso');
    } else if (imc >= 30 && imc < 35) {
    print('Obesidade grau I');
    } else if (imc >= 35 && imc < 40) {
    print('Obesidade grau II (severa)');
  } else {
    print('Obesidade grau III (mórbida)');
  }
}
