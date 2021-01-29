import 'TripModule.dart';
import 'dart:io';

import 'passengerModule.dart';

void main(List<String> arguments) {
  bool flag = true;

  int choose ;
  List<Trip> tripsList = List();
  List<passenger> passengersList = List();
  while (flag == true) {
    stdout.write('\t\t-----------------------------------'
        '\n \t \t 1. add trip \t 2. edit trip \n '
        '\n \t \t 3. del trip \t 4. search by price \n '
        '\n \t \t 5. view trips \t 6. view last trips \n '
        '\n \t \t 7. reserve \t 8. add passenger \n '
        '\n \t     9. view passenger 10. exit \n '
        '\t\t-----------------------------------\n ');
    stdout.write('choose an option : ');
    choose= int.parse(stdin.readLineSync());
    if(choose == 1){
      // add trip
      String input;
      String yes = 'y';
      while(yes=='y'){
        Trip trip1= Trip() ;
        trip1.addTrip();
        tripsList.add(trip1);
        print('\t  Successfully added ^_^ ');
        print('are you want to add another trip?(y/n)');
        input=stdin.readLineSync();
        if (input == 'y'){
          yes= 'y';
        }else if(input == 'n'){
          yes='n';
        }
      }
    }else if(choose == 2){
      int index;
      Trip trip2 ;
      String yes = 'y';
      String input;
      while(yes=='y'){
       stdout.write('=> enter trip id : ');
       int triplId= int.parse(stdin.readLineSync());
       if(tripsList.isNotEmpty){
         for(int i=0;i<tripsList.length-1;i++){
            if(tripsList[i].id==triplId) {
              index = i;
              trip2=tripsList[i];
              break;
            }
         }
         if(trip2==null){
           print("there is'nt a trip with this Id please try again...");
         }
       }else {
         print("there is no trips added yet ");
         continue;
       }
       if(trip2!=null){
         print(trip2.toString());
         tripsList[index]= trip2.editTrip(trip2);
         print('\t  Successfully etided ^_^ ');
       }
       print('are you want to edit another trip?(y/n)');
       input=stdin.readLineSync();
       if (input == 'y'){
         yes= 'y';
       }else if(input == 'n'){
         yes='n';
       }
      }
    }else if(choose == 3){
      // del trip
      int index;
      int tripid;
      Trip trip3;
      String yes = 'y';
      String input;
      while(yes=='y'){
        print('=>enter trip id : ');
        tripid= int.parse(stdin.readLineSync());
        if(tripsList.isNotEmpty){
          for(int i=0;i<tripsList.length-1;i++){
            if(tripsList[i].id==tripid) {
              index = i;
              trip3=tripsList[i];
              break;
            }
          }
          if(trip3==null){
            print("there is'nt a trip with this Id please try again...");
          }
        }else {
          print("there is no trips added yet ");
          continue;
        }
        if(trip3!=null){
          print(trip3.toString());
          tripsList.removeAt(index);
          print('\t  Successfully deleted ^_^ ');
        }
        print('are you want to add another trip?(y/n)');
        input=stdin.readLineSync();
        if (input == 'y'){
          yes= 'y';
        }else if(input == 'n'){
          yes='n';
        }
      }

    }else if(choose == 4){

      int index ;
      double triplprice ;
      Trip trip4 ;
      String yes = 'y';
      String input;
      while(yes=='y') {
        stdout.write('=> enter trip price : ');
        triplprice = double.parse(stdin.readLineSync());
        if (tripsList.isNotEmpty) {
          for (int i = 0; i < tripsList.length - 1; i++) {
            if (tripsList[i].price == triplprice) {
              index = i;
              trip4 = tripsList[i];
              break;
            }
          }
          if (trip4 == null) {
            print("there is'nt a trip with this Id please try again...");
          }
        } else {
          print("there is no trips added yet ");
          continue;
        }
        if (trip4 != null) {
          print(trip4.toString());
        }
        print('are you want to edit another trip?(y/n)');
        input=stdin.readLineSync();
        if (input == 'y') {
          yes = 'y';
        } else if (input == 'n') {
          yes = 'n';
        }
      }
    }else if(choose == 5){
      // view trips
      for (int i = 0; i < tripsList.length - 1; i++) {
        print(tripsList[i].toString());
      }
      print('this all trips');

    }else if(choose == 6){
      if (tripsList.length-1<= 10){
        for (int i = 0; i < tripsList.length - 1; i++) {
          print(tripsList[i].toString());
        }
      }
      else {
        for (int i = 1; i <= 10; i++) {
          print(tripsList[tripsList.length-i].toString());
        }
      }
      print('this last 10 trips');
    }else if(choose == 7){
      int index;
      int tripid;
      Trip trip3;
      passenger passenger1;
      String yes = 'y';
      String input;
      while(yes=='y'){
        print('=>enter trip id : ');
        tripid= int.parse(stdin.readLineSync());

        if(tripsList.isNotEmpty){
          for(int i=0;i<tripsList.length-1;i++){
            if(tripsList[i].id==tripid) {
              index = i;
              trip3=tripsList[i];
              break;
            }
          }
          if(trip3==null){
            print("there is'nt a trip with this Id please try again...");
          }
        }else {
          print("there is no trips added yet ");
          continue;
        }
        if(trip3!=null){
          print(trip3.toString());
          if(trip3.count_passener==trip3.passener_Limite){
            print('sorry this trip is full complete try another trip');
          }
          else {
            passenger1 = passenger();
            passenger1.reservepassenger();
            passengersList.add(passenger1);
          }
          print('\t  Successfully reserved ^_^ ');
        }
        print('are you want to edit another trip?(y/n)');
        input=stdin.readLineSync();
        if (input == 'y'){
          yes= 'y';
        }else if(input == 'n'){
          yes='n';
        }
      }

    }else if(choose == 8){
      int tripindex;
      int passengerindex;
      Trip trip2 ;
      passenger passenger1;
      String yes = 'y';
      String input;
      while(yes=='y'){
        stdout.write('=> enter trip id : ');
        int triplId= int.parse(stdin.readLineSync());
        if(tripsList.isNotEmpty){
          for(int i=0;i<tripsList.length-1;i++){
            if(tripsList[i].id==triplId) {
              tripindex = i;
              trip2=tripsList[i];
              break;
            }
          }
          if(trip2==null){
            print("there is'nt a trip with this Id please try again...");
          }
        }else {
          print("there is no trips added yet ");
          continue;
        }
        if(trip2!=null){
          print(trip2.toString());
          if(passengersList.isNotEmpty){
            for(int i=0;i<passengersList.length-1;i++){
              if(passengersList[i].passenger_tripid==triplId) {
                passengerindex = i;
                passenger1=passengersList[i];
                break;
              }
            }
            if(passenger1==null){
              print("there is'nt a passenger with this tripId please try again...");
            }
          }else {
            print("there is no passengers added yet ");
            continue;
          }
          if(passenger1!=null) {
            print(passenger1.toString());
            passengersList[passengerindex] = passenger1.editpassenger();
            print('\t  Successfully etided ^_^ ');
          }
        }
        print('are you want to edit another trip?(y/n)');
        input=stdin.readLineSync();
        if (input == 'y'){
          yes= 'y';
        }else if(input == 'n'){
          yes='n';
        }
      }
    }else if(choose == 9){

      for (int i = 0; i < passengersList.length - 1; i++) {
        print(passengersList[i].toString());
      }
      print('this all passengers');
    }else if(choose == 10){
      // exit
      flag = false;
    }

  }
}
