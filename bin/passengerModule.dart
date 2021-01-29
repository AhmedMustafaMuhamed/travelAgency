import 'dart:io';

class passenger{

  int passengerId;
  String passengername;
  int passenger_tripid;

  reservepassenger(){
    stdout.write('=> enter Id: ');
    passengerId = int.parse(stdin.readLineSync());

    stdout.write('=> enter name: ');
    passengername = stdin.readLineSync();
    // date
    stdout.write('=> tripid: ');
    passenger_tripid=int.parse(stdin.readLineSync());

  }
  passenger editpassenger(){
    stdout.write('=> enter Id: ');
    passengerId = int.parse(stdin.readLineSync());

    stdout.write('=> enter name: ');
    passengername = stdin.readLineSync();
  }
}