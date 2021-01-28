import 'TripModule.dart';
import 'dart:io';

void main(List<String> arguments) {
  bool flag = true;
  String yes = 'n';
  int choose ;
  List<Trip> tripsList = List();

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
      while(yes=='y'){
        Trip trip1= Trip() ;
        trip1.addTrip();
        tripsList.add(trip1);
        print('\t  Successfully added ^_^ ');
        print('are you want to add another trip?(y/n)');
        if (stdin.readLineSync() == 'y'){
          yes= 'y';
        }else if(stdin.readLineSync() == 'n'){
          yes='n';
        }
      }
    }else if(choose == 2){
      int index;
      Trip trip2 ;
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
       if (stdin.readLineSync() == 'y'){
         yes= 'y';
       }else if(stdin.readLineSync() == 'n'){
         yes='n';
       }
      }
    }else if(choose == 3){
      // del trip
      int index;
      int tripid;
      Trip trip3;
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
      print('are you want to edit another trip?(y/n)');
      if (stdin.readLineSync() == 'y'){
        yes= 'y';
      }else if(stdin.readLineSync() == 'n'){
        yes='n';
      }

    }else if(choose == 4){

      int index ;
      double triplprice ;
      Trip trip4 ;
      while(yes=='y') {
        stdout.write('=> enter trip price : ');
        triplprice = double.parse(stdin.readLineSync());
        if (tripsList.isNotEmpty) {
          for (int i = 0; i < tripsList.length - 1; i++) {
            if (tripsList[i].id == triplprice) {
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
        if (stdin.readLineSync() == 'y') {
          yes = 'y';
        } else if (stdin.readLineSync() == 'n') {
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
      for (int i = 0; i < tripsList.length - 1; i++) {
        print(tripsList[i].toString());
      }
      print('this last 10 trips');
    }else if(choose == 7){
      print('sorry cant complete time is ending ');
      print('are you want to edit another trip?(y/n)');
      if (stdin.readLineSync() == 'y'){
        yes= 'y';
      }else if(stdin.readLineSync() == 'n'){
        yes='n';
      }
    }else if(choose == 8){
      print('sorry cant complete time is ending ');
      print('are you want to edit another trip?(y/n)');
      if (stdin.readLineSync() == 'y'){
        yes= 'y';
      }else if(stdin.readLineSync() == 'n'){
        yes='n';
      }
    }else if(choose == 9){
      print('sorry cant complete time is ending ');
      print('are you want to edit another trip?(y/n)');
      if (stdin.readLineSync() == 'y'){
        yes= 'y';
      }else if(stdin.readLineSync() == 'n'){
        yes='n';
      }
    }else if(choose == 10){
      // exit
      flag = false;
    }

  }
}
