import 'dart:io';

class passenger{

  int passengerId;
  String passengername;
  int passenger_tripid;

  reservepassenger(){
    stdout.write('=> enter passenger Id: ');
    passengerId = int.parse(stdin.readLineSync());

    stdout.write('=> enter name: ');
    passengername = stdin.readLineSync();
    // date
    stdout.write('=> tripid: ');
    passenger_tripid=int.parse(stdin.readLineSync());

  }
  passenger editpassenger(){
    stdout.write('=> enter passenger Id: ');
    passengerId = int.parse(stdin.readLineSync());

    stdout.write('=> enter name: ');
    passengername = stdin.readLineSync();
  }

  @override
  String toString() {
    return 'passenger_id : $passengerId \t passenger_name : $passengername \t passenger_tripid : $passenger_tripid ';
  }
}