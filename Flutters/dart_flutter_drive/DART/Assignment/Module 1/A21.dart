//  21. Create Below Patterns:

import 'dart:io';

void main() {
  FirstPatten();
  SecondPatten();
  ThirdPatten();
  FourPatten();
  FivePatten();
  SixPatten();
  SevenPatten();
  EightPatten();
  NinePatten();
  TenPatten();
  ElevenPatten();
}

void FirstPatten() {
  print("we are print * using pyramid \n");
  print("Enter value of N : ");
  int N = int.parse(stdin.readLineSync()!);

  for (int i = 1; i <= N; i++) {
    for (int j = 1; j <= i; j++) {
      stdout.write('* ');
    }
    stdout.writeln();
  }
}

void SecondPatten() {
  print("we are print number using pyramid \n");
  print("Enter value of N : ");
  int N = int.parse(stdin.readLineSync()!);

  for (int i = 1; i <= N; i++) {
    for (int j = 1; j <= i; j++) {
      stdout.write('$j ');
    }
    stdout.writeln();
  }
}

void ThirdPatten() {
  print("we are print number using pyramid \n");
  print("Enter value of N : ");
  int N = int.parse(stdin.readLineSync()!);

  for (int i = 1; i <= N; i++) {
    for (int j = 1; j <= i; j++) {
      stdout.write('$i ');
    }
    stdout.writeln();
  }
}

void FourPatten() {
  print("we are print reverse number using pyramid \n");
  print("Enter value of N : ");
  int N = int.parse(stdin.readLineSync()!);

  for (int i = 1; i <= N; i++) {
    for (int j = N - 1; j >= i; j--) {
      stdout.write(" ");
    }
    for (int j = 1; j <= i; j++) {
      stdout.write("*");
    }
    stdout.writeln();
  }
}

void FivePatten() {
  print("we are print reverse number using pyramid \n");
  print("Enter value of N : ");
  int N = int.parse(stdin.readLineSync()!);

  for (int i = 1; i <= N; i++) {
    int k = i;
    for (int j = N - 1; j >= i; j--) {
      stdout.write(" ");
    }
    for (int j = 1; j <= i; j++) {
      stdout.write("$j");
    }
    stdout.writeln();
  }
}

void SixPatten() {
  print("we are print reverse number using pyramid \n");
  print("Enter value of N : ");
  int N = int.parse(stdin.readLineSync()!);

  for (int i = 1; i <= N; i++) {
    for (int j = N - 1; j >= i; j--) {
      stdout.write(" ");
    }
    for (int j = 1; j <= i; j++) {
      stdout.write("* ");
    }
    stdout.writeln();
  }
}

void SevenPatten() {
  print("we are print reverse number using pyramid \n");
  print("Enter value of N : ");
  int N = int.parse(stdin.readLineSync()!);

  for (int i = 1; i <= N; i++) {
    for (int j = N - 1; j >= i; j--) {
      stdout.write(" ");
    }
    for (int j = 1; j <= i; j++) {
      stdout.write("$j ");
    }
    stdout.writeln();
  }
}

void EightPatten() {
  print("we are print reverse number using pyramid \n");
  print("Enter value of N : ");
  int N = int.parse(stdin.readLineSync()!);

  for (int i = 1; i <= N; i++) {
    for (int j = N - 1; j >= i; j--) {
      stdout.write(" ");
    }
    for (int j = 1; j <= i; j++) {
      stdout.write("$i ");
    }
    stdout.writeln();
  }
}

void NinePatten() {
  late int num = 0;
  print("we are print number using pyramid \n");
  print("Enter value of N : ");
  int N = int.parse(stdin.readLineSync()!);

  for (int i = 1; i <= N; i++) {
    for (int j = 1; j <= i; j++) {
      num++;
      stdout.write('$num ');
    }
    stdout.writeln();
  }
}

void TenPatten() {
  print("we are print number using pyramid \n");
  print("Enter value of N : ");
  int N = int.parse(stdin.readLineSync()!);
  int k;
  for (int i = 1; i <= N; i++) {
    for (int j = 1; j <= i; j++) {
      k = j % 2;
      stdout.write("$k");
    }
    stdout.writeln();
  }
}

void ElevenPatten() {
  print("we are print number using pyramid \n");
  print("Enter value of N : ");
  int N = int.parse(stdin.readLineSync()!);
  int k;
  for (int i = 1; i <= N; i++) {
    for (int j = 1; j <= i; j++) {
      k = i * i;
      stdout.write('$k ');
    }
    stdout.writeln();
  }
}
