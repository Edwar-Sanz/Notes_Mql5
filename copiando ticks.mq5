

// crear la estructura necesaria para almacenar los datos
MqlRates rates[];

void OnStart(){
   // ordena el array
   ArraySetAsSeries(rates, true);
   
   // se copia la última barra y se imprime el close cada segundo
   while( ! IsStopped() ) {
      int data = CopyRates(_Symbol, _Period, 0, 1, rates);
      Print("Time: ", rates[0].time ," Tick: ", rates[0].close);    
      Sleep(1 * 1000);
      
   }
     
  
 
   
}

