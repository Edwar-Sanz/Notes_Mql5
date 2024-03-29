


void OnStart(){

   // MqlRates es una estructura que sirve para almacenar la información sobre el activo.
   /* 
   
   struct MqlRates {
      datetime time;         // hora del inicio del período
      double   open;         // precio de apertura
      double   high;         // precio máximo durante el período
      double   low;          // precio mínimo durante el período
      double   close;        // precio de cierre
      long     tick_volume;  // volumen de tick
      int      spread;       // spread
      long     real_volume;  // volumen de stock
    };
 
   ejemplo:                                                          */
   // estructura donde se van a almacenar los datos 
   MqlRates rates[];
   
 
   /*
   CopyRates copia los valores del activo, necesita los siguientes parámetros
   
    TIPO DE DATO:  string       ENUM_TIMEFRAMES   datetime     int      MqlRates                       
   int          CopyRates( symbol_name,   timeframe,       start_time,  count,  rates_array[]);    */
   int copied = CopyRates( _Symbol,        _Period,          0,          5,       rates);
   
   // cantidad de barras copiadas
   Print("Se copiaron ",ArraySize(rates)," barras");
   
   // esta funcion ordena el array para que la última barra sea el elemento array[0]
   ArraySetAsSeries(rates, true);
   
   // imprimiendo valores
   for (int i=0; i < ArraySize(rates); i++){
      Print( "rates[",i,"] ","Time: ", rates[i].time, " Close: ", rates[i].close); 
   }
   
   // GetLastError imprime el último error
   Print(GetLastError());






  
}

