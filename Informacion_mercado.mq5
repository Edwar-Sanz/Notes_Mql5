
int OnInit(){

   return(INIT_SUCCEEDED);
}

void OnDeinit(const int reason){

   
}

void OnTick(){

   /* LA ESTRUCTURA MqlTick CONTIENE LOS SIGUINTES DATOS:
   struct MqlTick 
      { 
      datetime     time;          // Hora de la última actualización de precios 
      double       bid;           // Precio actual Bid 
      double       ask;           // Precio actual Ask 
      double       last;          // Precio actual de la última transacción (Last) 
      ulong        volume;        // Volumen para el precio actual Last 
      long         time_msc;      // Hora de la última actualización de los precios en milisegundos 
      uint         flags;         // Banderas de los tics 
      double       volume_real;   // Volumen para el precio actual Last con precisión aumentada 
     };
   */
   
   
   MqlTick tick; // se crea un structura para almacenar los datos
   
   SymbolInfoTick(_Symbol, tick);
   
   Print(" time= ", DoubleToString(tick.time),
         " Bid= ", DoubleToString(tick.bid));
   
   
}

