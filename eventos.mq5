
#property indicator_chart_window

// -------------------------------------------------------------------------------------------------------

// Esta funcion se ejecuta una sola vez y es la primera que se ejecuta
int OnInit(){
   
   Print("Estamos dentro de la funcion OnInit", TimeCurrent());
   
   //se llama la funcion una sola vez y OnTimer la ejecuta automáticamente con el temporizador del sistema
   EventSetTimer(5);  

return(INIT_SUCCEEDED);
}

// -------------------------------------------------------------------------------------------------------

// Esta funcion se ejecuta cada vez que hay un cambio de precio
int OnCalculate(const int rates_total, const int prev_calculated, const datetime &time[],
                const double &open[],  const double &high[],      const double &low[],
                const double &close[], const long &tick_volume[], const long &volume[],
                const int &spread[]){


   Print("Estamos dentro de la funcion OnCalculate", TimeCurrent());


return(rates_total);
}

// -------------------------------------------------------------------------------------------------------

// Esta funcion se ejecuta periódicamente dependiendo del periodo indicado en la funcion EventSetTimer()
void OnTimer(){

   Print("Estamos dentro de la funcion OnTimer", TimeCurrent());
   
}

// -------------------------------------------------------------------------------------------------------

// Esta de la segunda funcion que se ejecuta, y lo hace una sola vez,
// despues se irá ejecutando con cada click en el gráfico
void OnChartEvent(const int id,  const long &lparam,  const double &dparam,   const string &sparam){

  Print("Estamos dentro de la funcion OnChartEvent", TimeCurrent());
   
}

// -------------------------------------------------------------------------------------------------------

// es la ultima funcion que se ejecuta, y lo hace en el momento en que el indicador es quitado del gráfico
void OnDeinit(const int reason){
  
  Print("Estamos dentro de la funcion OnDeinit", TimeCurrent()); 
  EventKillTimer();
   
}


// -------------------------------------------------------------------------------------------------------