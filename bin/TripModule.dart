import 'dart:io';
class Trip {
  int id = 0;
  int count_passener = 0;
  int passener_Limite;
  double price;
  String location;

  DateTime date;

  Trip();

   addTrip() {

     stdout.write('=> enter Id: ');
     id = int.parse(stdin.readLineSync());

     stdout.write('=> enter passen_Limite: ');
     passener_Limite = int.parse(stdin.readLineSync());

     stdout.write('=> enter price: ');
     price = double.parse(stdin.readLineSync());

     stdout.write('=> enter location: ');
     location = stdin.readLineSync();
     // date
     stdout.write('=> enter year: ');
     int tripYear=int.parse(stdin.readLineSync());

     stdout.write('=> enter month: ');
     int tripMonth=int.parse(stdin.readLineSync());

     stdout.write('=> enter day: ');
     int tripDay=int.parse(stdin.readLineSync());

     date= DateTime(tripYear,tripMonth,tripDay);
  }

 Trip editTrip(Trip trip) {
        stdout.write('=> enter Id: ');
        trip.id = int.parse(stdin.readLineSync());

        stdout.write('=> enter passen_Limite: ');
        trip.passener_Limite = int.parse(stdin.readLineSync());

        stdout.write('=> enter price: ');
        trip.price = double.parse(stdin.readLineSync());

        stdout.write('=> enter location: ');
        trip.location = stdin.readLineSync();
        // date
        stdout.write('=> enter year: ');
         int tripYear=int.parse(stdin.readLineSync());

        stdout.write('=> enter month: ');
        int tripMonth=int.parse(stdin.readLineSync());

        stdout.write('=> enter day: ');
        int tripDay=int.parse(stdin.readLineSync());

   trip.date= DateTime(tripYear,tripMonth,tripDay);

   return trip ;
  }


}
