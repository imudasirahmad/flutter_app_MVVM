

class AppExceptions  implements Exception {


   final  message ;

   final  prefix ;

  AppExceptions([this.message , this.prefix]);


  String toString(){
    return '$prefix$message';
  }

}

class InternetException extends  AppExceptions {

  InternetException([String ? message]) : super(message, '');
}

class RequestTimeOutExc extends  AppExceptions {

  RequestTimeOutExc([String ? message]) : super(message, 'Request Timeout');
}

class ServerException extends  AppExceptions {

  ServerException([String ? message]) : super(message, 'Intrnal Server Error');
}

class InvalidUrlExc extends  AppExceptions {

  InvalidUrlExc([String ? message]) : super(message, 'Invalid Url ');
}


class FetchDataExc extends  AppExceptions {

  FetchDataExc([String ? message]) : super(message, '');
}